<?php
function fetchDhmzXml($url) {
    $data = @file_get_contents($url);

    if ($data !== false) {
        return $data;
    }

    if (function_exists('curl_init')) {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_TIMEOUT, 10);

        $data = curl_exec($ch);
        curl_close($ch);

        return $data;
    }

    return false;
}

function cleanText($value) {
    return htmlspecialchars(trim((string)$value), ENT_QUOTES, 'UTF-8');
}

function hikingAdvice($temperature, $windSpeed, $condition) {
    $temperature = (float)$temperature;
    $windSpeed = (float)$windSpeed;
    $conditionLower = strtolower($condition);

    if (str_contains($conditionLower, 'kiša') || str_contains($conditionLower, 'pljusak')) {
        return 'Moguće skliske staze. Preporučuje se oprez i nepromočiva odjeća.';
    }

    if (str_contains($conditionLower, 'snijeg')) {
        return 'Mogući zimski uvjeti na stazama. Potrebna je odgovarajuća obuća.';
    }

    if (str_contains($conditionLower, 'grmljavina')) {
        return 'Ne preporučuje se odlazak na planinu zbog opasnosti od grmljavine.';
    }

    if (str_contains($conditionLower, 'magla')) {
        return 'Smanjena vidljivost. Preporučuje se dodatni oprez na stazama.';
    }

    if ($windSpeed >= 8) {
        return 'Pojačan vjetar na vrhu. Budite oprezni na izloženim dijelovima staze.';
    }

    if ($temperature < 8) {
        return 'Na Sljemenu je hladnije nego u Zagrebu. Ponesite topliju odjeću.';
    }

    return 'Uvjeti su uglavnom pogodni za planinarenje, uz uobičajen oprez.';
}

$xmlUrl = 'https://vrijeme.hr/hrvatska_n.xml';
$xmlData = fetchDhmzXml($xmlUrl);

$weather = null;
$updated = null;

if ($xmlData !== false) {
    $xml = @simplexml_load_string($xmlData);

    if ($xml !== false) {
        $date = cleanText($xml->DatumTermin->Datum ?? '');
        $term = cleanText($xml->DatumTermin->Termin ?? '');

        if ($date !== '' && $term !== '') {
            $updated = $date . ' u ' . $term . ' h';
        }

        foreach ($xml->Grad as $city) {
            $cityName = cleanText($city->GradIme ?? '');

            if (stripos($cityName, 'Puntijarka') !== false) {
                $data = $city->Podatci;

                $weather = [
                    'location' => $cityName,
                    'temperature' => cleanText($data->Temp ?? ''),
                    'humidity' => cleanText($data->Vlaga ?? ''),
                    'pressure' => cleanText($data->Tlak ?? ''),
                    'windDirection' => cleanText($data->VjetarSmjer ?? ''),
                    'windSpeed' => cleanText($data->VjetarBrzina ?? ''),
                    'condition' => cleanText($data->Vrijeme ?? '')
                ];

                break;
            }
        }
    }
}
?>

<section class="weather-widget">
    <h2>Vrijeme za planinare</h2>

    <?php if ($weather): ?>
        <div class="weather-grid">
            <div>
                <strong>Lokacija</strong>
                <span><?php echo $weather['location']; ?></span>
            </div>

            <div>
                <strong>Temperatura</strong>
                <span><?php echo $weather['temperature']; ?> °C</span>
            </div>

            <div>
                <strong>Vjetar</strong>
                <span>
                    <?php echo $weather['windDirection']; ?>,
                    <?php echo $weather['windSpeed']; ?> m/s
                </span>
            </div>

            <div>
                <strong>Vlažnost</strong>
                <span><?php echo $weather['humidity']; ?> %</span>
            </div>

            <div>
                <strong>Tlak zraka</strong>
                <span><?php echo $weather['pressure']; ?> hPa</span>
            </div>

            <div>
                <strong>Stanje</strong>
                <span><?php echo $weather['condition']; ?></span>
            </div>
        </div>

        <p class="weather-advice">
            <?php
                echo hikingAdvice(
                    $weather['temperature'],
                    $weather['windSpeed'],
                    $weather['condition']
                );
            ?>
        </p>

        <?php if ($updated): ?>
            <p class="weather-updated">Zadnje mjerenje: <?php echo $updated; ?></p>
        <?php endif; ?>

    <?php else: ?>
        <p>Trenutni podaci za Puntijarku nisu dostupni. Provjerite službenu DHMZ prognozu.</p>
    <?php endif; ?>

    <p class="weather-source">
        Izvor: DHMZ |
        <a href="https://meteo.hr/prognoze_e.php?Code=Puntijarka&id=prognoza&param=3d&section=prognoze_model" target="_blank">
            Detaljna 3-dnevna prognoza za Puntijarku
        </a>
    </p>
</section>
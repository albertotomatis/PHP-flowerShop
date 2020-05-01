
<html>
    <style>

    body {
            background-image: url('https://i.ibb.co/nbmsPjc/fiori.png');
            background-repeat: no-repeat;
            background-size: cover;
        }

    ul li {
        list-style-type: none;
        font-size: 16px;
    }

    span {
        font-weight: bold;
    }

    hr {
        color: #f7f6f2;
        width: 30%;
    }
 
    </style>

<body>

    <?php foreach ($fiori as $fiore) { ?>

        <ul>
        <li><span>Fiore:</span> <?= $fiore->name ?></li>
        <li><span>Ricorrenza:</span> <?= $fiore->Opportunities['name'] ?></li>
        <li><span>Descrizione:</span> <?= $fiore->Opportunities['description'] ?></li>
        </ul>
        <hr>

    <?php } ?>

</body>

</html>
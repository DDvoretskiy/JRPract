<html>
<head>
  <style>
    .button {
      border-radius: 4px;
      background-color: #f4511e;
      border: none;
      color: #FFFFFF;
      text-align: center;
      font-size: 28px;
      padding: 20px;
      width: 200px;
      transition: all 0.5s;
      cursor: pointer;
      margin: auto;
      display: block;
    }

    .button span {
      cursor: pointer;
      display: inline-block;
      position: relative;
      transition: 0.5s;
    }

    .button span:after {
      content: '\00bb';
      position: absolute;
      opacity: 0;
      top: 0;
      right: -20px;
      transition: 0.5s;
    }

    .button:hover span {
      padding-right: 25px;
    }

    .button:hover span:after {
      opacity: 1;
      right: 0;
    }
  </style>
</head>
<body>

<h2 style ="text-align:center;"> "СОЗДАЕМ ЧИТАЕМ ОБНОВЛЯЕМ УДАЛЯЕМ" by Дворецкий Д.В. </h2>
<a href="books/page/1" target="_blank">
  <button class="button"><span>ПОЕХАЛИ!</span></button>
</a>
</body>
</html>
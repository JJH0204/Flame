<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Challenge 15: Steganography</title>
    <style>
        body {
            background-color: #121212;
            color: #00ff00;
            font-family: 'Courier New', monospace;
            text-align: center;
            padding: 20px;
        }

        .container {
            margin: 0 auto;
            padding: 20px;
            max-width: 600px;
            background-color: #1e1e1e;
            border: 1px solid #00ff00;
            border-radius: 5px;
        }

        img {
            max-width: 100%;
            height: auto;
            border: 2px solid #00ff00;
            margin-top: 20px;
        }

        button {
            background-color: #00ff00;
            color: #000;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-weight: bold;
        }

        button:hover {
            background-color: #33ff99;
        }

        #result {
            margin-top: 20px;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <h1>Steganography</h1>
    <div class="container">
        <p>아래 이미지를 분석하여 숨겨진 플래그를 찾아보세요.</p>
        <img src="stego_challenge_with_flag.png" alt="Challenge Image">
        <p id="result"></p>
        <button onclick="showHint()">힌트 보기</button>
    </div>

    <script>
        function showHint() {
            const result = document.getElementById('result');
            result.textContent = '힌트: 이미지 데이터에 숨겨진 텍스트를 추출하세요.';
        }
    </script>
</body>
</html>

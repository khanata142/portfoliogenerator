<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&display=swap" rel="stylesheet">
    <title>about</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0px;
            padding:0px;
            font-family: 'Baloo 2', cursive;
        }

        body {
            background-color: #c7c5c2;
        }

        #maincard {
            width: 60rem;
            height: 40rem;
            margin: 5rem auto;
            border-radius: 15px;
            display: flex;
            flex-wrap: wrap;
            overflow:  auto;
            background-color: white;
        }

        h3 {
            width: 100%;
            height:5rem;
            font-size: 3rem;
            font-weight: bold;
            text-align: center;
            border-radius: 15px;
            background-color: blueviolet;
        }

        @media screen and (max-width:500px) {
            p {
                font-size: xx-large;
            }

            #maincard {
                height: auto;
            }
        }
    </style>
</head>

<body>
    <div id="maincard">
        <h3>About me</h3>
        <p style="padding: 1.5rem; font-weight: bold;">
           ${about}
        </p><br><br><br>
        <p style="padding: 1.7rem; font-weight: bold; color: blueviolet;">
            <span style="text-decoration:underline">NOTE:</span> Dear reader if i bored you i am sorry but by any chance if you want to seek more detail please
            connect with me by clicking the respective links...
        </p>

    </div>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false"%>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&display=swap" rel="stylesheet">
    <title>portfolio</title>
    <script>
        function showWork() {
            window.location = '${finalPortfolioDetails[4]}';
        }
        function showContact() {
        	var email = "${finalPortfolioDetails[1]}";
            alert("Please note the email address: \nEmail: "+email);
        }
    </script>
    <style>
        * {
            box-sizing: border-box;
            margin: 0rem;
            font-family: 'Baloo 2', cursive;
        }

        body {
            background: url('https://images.unsplash.com/photo-1614850523459-c2f4c699c52e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80');
            background-repeat: no-repeat;
            background-size: cover;
        }

        #maincard {
            border: 2px solid #a7c1a7;
            width: 60rem;
            height: auto;
            background-color: white;
            border-radius: 10px;
            margin: 2rem auto;
        }

        nav {
            width: 100%;
            height: auto;
            display: flex;
            flex-wrap: wrap;
        }

        #logo {
            width: 9rem;
            height: 5rem;
            padding:0.5rem;
        }
         #logo img{
            width: 100%;
            height: 100%;
        }
        #navlist {
            width: 50rem;
            height: auto;
            list-style: none;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        a {
            text-decoration: none;
            font-weight: bold;
            font-size: 1.2rem;
            color: #50009b;;
        }

        #navlist li {
            padding: 1rem 2rem;
        }

        .btn {
            color: white;
            background-color: black;
            width: 5rem;
            height: 2rem;
            border-radius: 5px;
            cursor: pointer;
        }

        section {
            width: 50rem;
            height: auto;
            margin: 3rem auto;
            display: flex;
            flex-wrap: wrap;
        }

        #profilepic {
            width: 15rem;
            height: 17rem;
            border: 2px #a7c1a7 solid;
        }

        #profilepic img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        #bio {
            width: 30rem;
            height: 17rem;
            overflow:auto;
            margin-left: auto;
            border: 2px #f7f7f7 solid;
            background-color: #f7f7f7;
            border-radius: 10px;
        }

        footer {
            width: 50rem;
            height: auto;
            margin: 3rem auto;
            display: flex;
            flex-wrap: wrap;
        }

        #career {
            width: 24rem;
            /* height: auto; */
            height: 21rem;
            overflow:auto;
            border: 2px #f7f7f7 solid;
            background-color: #f7f7f7;
            border-radius: 10px;
        }

        #skills {
            width: 24rem;
            /* height: auto; */
            height: 21rem;
            overflow:auto;
            margin-left: auto;
            border: 2px #f7f7f7 solid;
            background-color: #f7f7f7;
            border-radius: 10px;
        }

        #skills li {
            list-style: none;
            border-radius: 5px;
            border: 2px #1e2e29 solid;
            background-color: #91c9b6;
            margin-top: 0.2rem;
            text-align: center;
            font-weight: bold;
            font-size: 1.2rem;
        }

        @media screen and (max-width:500px) {

            #logo {
                display: none;
            }

            #navlist {
                display: block;
                text-align: center;
                margin: auto;
            }

            section {
                display: block;
            }

            #profilepic {
                margin: auto;
                width: 25rem;
                height: 25rem;
            }

            #bio {
                display: block;
                width: 100%;
            }

            footer {
                display: block;
            }

            #career {
                width: 100%;
                margin-bottom:2rem;
            }

            #skills {
                width: 100%;

            }

            body,
            a {
                font-size: xx-large;
            }

            .btn {
                display: block;
                height: auto;
                width: 100%;
                font-size: xx-large;
            }
        }
    </style>
</head>

<body>
    <div id="maincard">
        <nav>
            <div id="logo">
                 <img src="${finalPortfolioDetails.get(9)}">
            </div>
            <ul id="navlist">
                <li><a href="about">About</a></li>
                <li><a href="${finalPortfolioDetails.get(2)}">LinkedIn</a></li>
                <li><a href="${finalPortfolioDetails.get(3)}">Facebook</a></li>
                <li><a href="javascript:showContact()">Contact</a></li>
                <li style="padding-top: 0.6rem;"><button class="btn" onclick="showWork()">View work</button></li>
            </ul>
        </nav>
        <section>
            <div id="profilepic">
              <img src="${finalPortfolioDetails.get(10)}">
            </div>
            <div id="bio">
                <h1 style="font-size: 3rem; text-align: center; margin-bottom: 0px;">Hi there!</h1>
                <p style="padding: 0rem 1rem 1rem 1rem; font-weight: bold;">
                    ${finalPortfolioDetails.get(5)}
                </p>
            </div>
        </section>
        <footer>
            <div id="career">
                <h1 style="text-align: center;">My Career so far...</h1>
                <p style="padding: 0rem 1rem 1rem 1rem; font-weight: bold;">
                     ${finalPortfolioDetails.get(6)}
                </p>
            </div>
            <div id="skills">
                <ul>
                <c:forEach items="${finalPortfolioDetails.get(7)}" var="skill">
                    <li>${skill}</li>
                    </c:forEach>
                </ul>
            </div>
        </footer>
    </div>
</body>

</html>
 
<%@ page session="true"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Registration Form</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="resources/custom.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
   </head>
   <body>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
      <link href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
      <div class="testbox">
         <h1>Registration</h1>
         <form:form commandName="USER">
            <hr>
            <div class="accounttype">
               <input type="radio" value="Customer" id="radioOne" name="typeOfUser" checked/>
               <label for="radioOne" class="radio" chec>Customer</label>
               <input type="radio" value="Freelancer" id="radioTwo" name="typeOfUser" />
               <label for="radioTwo" class="radio">Freelancer</label>
            </div>
            <hr>
            <label id="icon" for="name"><i class="icon-envelope "></i></label>
            <input path="email" type="text" email="email" id="name" placeholder="Email" required/>
            <label id="icon" for="name"><i class="icon-user"></i></label>
            <input path="name" input type="text" name="name" id="name" placeholder="Name" required/>
            <label id="icon" for="name"><i class="icon-user"></i></label>
            <input path="age" input type="text" age="age" id="name" placeholder="Age" required/>
            <label id="icon" for="name"><i class="icon-shield"></i></label>
            <input path="password" input type="password" password="password" id="name" placeholder="Password" required/>
            <div class="gender">
               <input type="radio" value="Male" id="radioOne1" name="sex" checked/>
               <label for="radioOne1" class="radio" chec>Male</label>
               <input type="radio" value="Female" id="radioTwo2" name="sex" />
               <label for="radioTwo2" class="radio">Female</label>
            </div>
            <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
            <name="form1" id="form1" >
            <a href="accounts"</a>
                <a input type="submit" class="button" href="accounts">Register</a>

            </form>
         </form:form>
      </div>
   </body>
</html>
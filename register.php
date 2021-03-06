<?php
    //Import PHPMailer classes into the global namespace
    //These must be at the top of your script, not inside a function
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;

    //Load Composer's autoloader
    require 'vendor/autoload.php';



    include 'regis_conn.php';
    if(isset($_POST['submit'])){
        $firstName = $_POST['firstName'];
        $lastName = $_POST['lastName'];
        $companyName = $_POST['companyName'];
        $userEmail = $_POST['userEmail'];
        $userPassword = $_POST['userPassword'];
        $confirmPassword = $_POST['confirmPassword'];
        $code = mysqli_real_escape_string($conn, md5(rand()));

        // $pass = password_hash($userPassword, PASSWORD_BCRYPT);
        // $cpass = password_hash($confirmPassword, PASSWORD_BCRYPT);

        if ($userPassword == $confirmPassword) {
            $sql = "SELECT * FROM user_details WHERE userEmail='$userEmail'";
            $result = mysqli_query($conn, $sql);
            if (!$result->num_rows > 0) {
                $sql = "INSERT INTO user_details (firstName, lastName,companyName,userEmail,userPassword,confirmPassword,code)
                VALUES ('$firstName','$lastName','$companyName','$userEmail','$userPassword','$confirmPassword','$code')";
                $result = mysqli_query($conn, $sql);
                if ($result) {
                    echo "<div style='display: none;'>";
                    //Create an instance; passing `true` enables exceptions
                    $mail = new PHPMailer(true);
                    try {
                        //Server settings
                        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
                        $mail->isSMTP();                                            //Send using SMTP
                        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
                        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
                        $mail->Username   = 'smsunnythefunny@gmail.com';                     //SMTP username
                        $mail->Password   = 'k@1l@$#c#@ndm3#@nd1@';                               //SMTP password
                        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
                        $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

                        //Recipients
                        $mail->setFrom('smsunnythefunny@gmail.com');
                        $mail->addAddress($userEmail);

                        //Content
                        $mail->isHTML(true);                                  //Set email format to HTML
                        $mail->Subject = 'no reply';
                        $mail->Body    = 'Here is the verification link <b><a href="http://localhost/coopearn/login.php?verification='.$code.'">http://localhost/coopearn/login.php?verification='.$code.'</a></b>';

                        $mail->send();
                        echo 'Message has been sent';
                    } catch (Exception $e) {
                        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
                    }
                    echo "</div>";
                    echo "<script>alert('Wow! User Registration Completed.')</script>";
                    $firstName = "";
                    $lastName = "";
                    $companyName = "";
                    $userEmail = "";
                    $_POST['userPassword'] = "";
                    $_POST['confirmPassword'] = "";
                } else {
                    echo "<script>alert('Woops! Something Wrong Went.')</script>";
                }
            } else {
                echo "<script>alert('Woops! Email Already Exists.')</script>";
            }
            
        } else {
            echo "<script>alert('Password Not Matched.')</script>";
        }
    }

?> 

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">


</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user" action="" method="POST">
                                <!-- name portion  -->
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control" id="exampleFirstName"
                                            placeholder="First Name*" maxlength="15" pattern="[A-Za-z]{1,15}" name="firstName" required>
                                        </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control from-com" id="exampleLastName"
                                            placeholder="Last Name" name="lastName">
                                    </div>
                                </div>
                                <!-- end-of-name-portion -->
                                
                                

                                    <!-- Compant Name -->
                                <div class="form-group row">
                                    <div class="col-sm mb-3 mb-sm-0">
                                    <input type="text" class="form-control " id="exampleInputCompanyName"
                                        placeholder="Company Name*" name="companyName" required>
                                </div>
                            </div>
                            <!-- Email -->
                            <div class="form-group row">
                                <div class="col-sm mb-3 mb-sm-0">
                                 <input type="email" class="form-control" id="exampleInputEmail"
                                 placeholder="E-mail*" name="userEmail"  required>
                             </div>
                             </div>
                             <!-- Password -->
                             <div class="form-group row">
                                <div class="col-sm mb-3 mb-sm-0">
                                 <input type="password" class="form-control" id="exampleUserPassword"
                                 placeholder="Password*" name="userPassword"  required>
                             </div>
                             </div>
                             <!-- confirm password  -->
                             <div class="form-group row">
                                <div class="col-sm mb-3 mb-sm-0">
                                 <input type="password" class="form-control" id="exampleConfirmPassword"
                                 placeholder="Confirm Password*" name="confirmPassword"  required>
                             </div>
                             </div>
                               <!-- contact End -->
                                <!-- End Email -->
                
                                <button  name="submit" class="btn btn-primary btn-user btn-block">
                                    Register Account
                                </button>
                                <!-- <a href="login.html" class="btn btn-primary btn-user btn-block">
                                    Register Account
                                </a> -->
                                <hr>
                                <!-- <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a> -->
                            </form>
                            <!-- <hr> -->
                            <!-- <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div> -->
                            <div class="text-center">
                                <a class="small" href="login.php">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
<div class='loginBox ' style="border-top:5px solid green;">
    <div class="panel-heading">
        Login
    </div>
    <div class='panel-body'>
        <form method="post">
            <div class="input-group">
                <span class='input-group-addon' style='vertical-align:top;'>
                    <i class=' glyphicon glyphicon-user'>
                    </i>
                </span>
                <input name='username' type="text" class="form-control" placeholder='username'/>
            </div>
             <div class="input-group" style='margin-top : 3%;'>
                 <span class='input-group-addon' >
                     <i class=' glyphicon glyphicon-lock'>
                     </i>
                 </span>
                <input name='password' type="password" placeholder='password' class="form-control" />
            </div>
            
            <input type="submit" value='login' class="btn btn-primary" style='width: 100%; margin-top: 3%; margin-bottom: 3%;'>
            <a href="https://www.instagram.com/oauth/authorize/?client_id=46c42afd63d84b0ab851e1f736d21b4c&redirect_uri=http://localhost/ILogin/&response_type=code&scope=public_content" class="btn btn-default" style='width: 100%;'>Login with Instagram</a>
        </form>
        <?php if(isset($error)){ ?>
        <div class="alert alert-danger alert-dismissable">
            <?php echo $error; ?>
        </div>
        <?php } ;?>
    </div>
    
</div>

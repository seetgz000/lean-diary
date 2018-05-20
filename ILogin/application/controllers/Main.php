<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

    public function index() {

        if(isset($_GET["code"])){

            $instaParam = array (
                'client_id' => '46c42afd63d84b0ab851e1f736d21b4c',
                'client_secret' => '13751b93a7d24f18bfc47ffd4d0818f0',
                'grant_type' => 'authorization_code',
                'redirect_uri' => 'http://localhost/ILogin/',
                'code' => $_GET["code"]
            );
            echo '<pre>';
            $curl = curl_init('https://api.instagram.com/oauth/access_token');
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $instaParam);
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            $result = curl_exec($curl);
            curl_close($curl);
            $finalResult = json_decode($result);
            
            $arrayResult = json_decode(json_encode($finalResult), True);

            var_dump($arrayResult);

            $sql = "Insert into instagram (access_token,insta_user_id,username,profile_picture,full_name,bio,website) values ( ?,?,?,?,?,?,? )";
            $sql .= "ON DUPLICATE KEY UPDATE
                        access_token = VALUES(access_token),
                        username = VALUES(username),
                        profile_picture = VALUES(profile_picture),
                        full_name = VALUES(full_name),
                        bio = VALUES(bio),
                        website = VALUES(website)";
      
            $this->db->query($sql,array(
                $arrayResult['access_token'],
                $arrayResult['user']['id'],
                $arrayResult['user']['username'],
                $arrayResult['user']['profile_picture'],
                $arrayResult['user']['full_name'],
                $arrayResult['user']['bio'],
                $arrayResult['user']['website'],
            ));

            // $curl = curl_init('https://api.instagram.com/v1/users/self/?access_token='.$finalResult->access_token);
            // curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            // curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            // $mediaResult = curl_exec($curl);
            // curl_close($curl);

            // print_r($finalResult);

            // $finalMediaResult = json_decode($mediaResult);

            // print_r($finalMediaResult);
        }else{
            $this->load->view('main/header');
            $this->load->view('main/index');
            $this->load->view('main/footer');    
        }
                
    }       
}

<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Access extends CI_Controller {
    public function login(){
        $data = array();

        if($_POST){

            $sql = "SELECT id,deleted,  role FROM users "
                    . "WHERE username = ? AND password = SHA2(CONCAT(salt, ?),512);";
            $result = $this->db->query($sql,array(
                $this->input->post('username'),
                $this->input->post('password')
            ))->result_array();


            if(count($result)){
                if($result[0]['deleted'] =='0'){
                $this->session->set_userdata(array(
                    'user_id' => $result[0]['id'],
                    'role' => $result[0]['role']
                ));

                redirect("Main/index","refresh");
                }else{
                    $data['error'] = 'Account deactivated';
                }
            }else{
                $data['error'] = 'Invalid username and password';
            }
        }

        $this->load->view('access/header',$data);
        $this->load->view('access/login');
        $this->load->view('access/footer');

    }
    public function logout(){
        $this->session->sess_destroy();
        redirect('access/login');
    }

    public function register(){
    $data = array();
    $salt = rand(11111111,99999999);
    if($_POST){
        if(!empty($this->input->post("password")) && !empty($this->input->post("phone_no"))){
            $sql = "Insert into users (phone_no,password,salt) values ( ?,SHA2(CONCAT(?,?),512),? )";
            $this->db->query($sql,array(
                $this->input->post("phone_no"),
                $this->input->post("password"),
                $salt,
                $salt
            ));
            
            redirect("main/login");
        }
    }

    $this->load->view("main/register",$data);
}




}

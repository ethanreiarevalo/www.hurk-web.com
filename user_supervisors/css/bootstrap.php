<link rel="stylesheet" href="../bootstrap-4.3.1-dist/css/bootstrap.css">
<link rel="stylesheet" href="../bootstrap-4.3.1-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="../images/logohurk.png" sizes="32x32" type="image/png">
<style>
        html,body{
            overflow-y: auto !important;
            overflow-x: hidden !important;
        }
        a{
            text-decoration: none !important;
        }
        .side-bar{
            display: block;
        }
        .sb{
            margin:auto;
            width:80%;
            box-shadow: 0px 1px 5px grey;
        }
        .image{
            height: 40vh;
            background: #d1d1d1;
            display:flex;
            justify-content:center;
            align-items:center;
            overflow:hidden;
        }
        .image img{
            width:100%;
        }
        .overlay{
            background:#0009;
            width:100%;
            height: 100%;
            position: absolute !important;
            z-index: 1;
            display: flex;
            justify-content:center;
            align-items:center;
            display:none;
        }
        .profile{
            
            width:80%;
            box-shadow: 0px 1px 5px grey;
        }
        .side-link-active{
            background-color: #d1d1d1;
        }
        .side-link{
            transition: 0.5s;
        }
        
        html,body{
                overflow:auto;
            }
        .request-wrapper{
            margin-top: 3%;
            height: 80vh;
            overflow-y:auto;
        }
        /* .card{
            border: 1px solid #84868a;
            padding: 2%;
            border-radius: 50% !important;
        }*/
        
        .num-content{
            border: 1px solid #84868a;
            height: 190px;
            width: 190px;
            border-radius: 50% !important;
        }
        .num-content h5{
            padding-top: 30%;
        }

        
        #wrapper-row{
            z-index:-1 !important;
        }
        .popup{
           display:none; 
        } 
        .pop{
            z-index:99999999999 !important;
            position: fixed;
            top:20% !important;
            left:35% !important;
            width: 25%;
            padding:3%;
            background-color: #cccccc;
            display:block;
            border-radius:5px;
        }
        @media only screen and (min-width:992px){
            
            .card{
                margin: 1% !important;
            }
        }
        @media only screen and (max-width:991px){
            html,body{
                overflow:auto;
                overflow-x:hidden;
            }
            
            .side-link:hover{
                transition: none !important;
                border-top-right-radius:0px;
                border-bottom-right-radius:0px;
                
            }
            .pop{
                top:20%;
                left:25% !important;
                padding:5%;
                width: 50%;
            }
            .side-link-active{
                border-top-right-radius:0px;
                border-bottom-right-radius:0px;
            }
        }
        @media only screen and (max-width:490px){
            html,body{
                overflow:auto;
                overflow-x:hidden;
            }
            .side-bar{
                height:49.1vh !important;
            }
            .side-link:hover{
                transition: none !important;
                border-top-right-radius:0px;
                border-bottom-right-radius:0px;
            }
            .pop{
                top:20%;
                left:12% !important;
                padding:10%;
                width: 75%;
            }
            .side-link-active{
                border-top-right-radius:0px;
                border-bottom-right-radius:0px;
            }
        }
    </style>
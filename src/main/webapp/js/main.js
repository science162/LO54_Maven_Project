var formations  = [] ;
var sessions = [];
var client = [];
var register_session = 0;

var contenCourHTML = "";

loadCourse();

loadAllSession();

function  loadAll()  {
         formations = [];
         $.ajax({ 
                url: 'formation', 
                dataType: 'json',  
                async: false, 
                success: function(data){ 
                        data.forEach(element => {
                                formations.push(element);                
                        });
                } 
            });
}

function loadAllSession(){
        sessions = [];
        $.ajax({ 
               url: 'session', 
               dataType: 'json', 
               async: false, 
               success: function(data){ 
                       data.forEach(element => {
                               sessions.push(element);                
                       });
               } 

        });
}

function loadSessionFilter(date,title,city){
        sessions = [];
        $.ajax({ 
               url: 'sessionFilter', 
               data: { 
                date: date, 
                title: title, 
                city: city
              },
               dataType: 'json', 
               async: false, 
               success: function(data){ 
                       data.forEach(element => {
                               sessions.push(element);                
                       });
               } 

        });
}

function subscribe(){
        if($("#fname").val() =='' || $("#phone").val()==''){
                $("#ModalCenterTitle").html(" Form is empty ");
                $(".modal-body").html("Be sure to fill all inputs before submit");
                return false;
        }
        var client = {
                lastname : $("#fname").val(),
                firstname : $("#lname").val(),
                address : $("#address").val(),
                phone : $("#phone").val(),
                email : $("#email").val(),
                password : $("#password").val(),
                type : "etudiant",
                id_session :  $("#id_session").val()
        }
        $.ajax({
                url: 'subscribe',
                type: 'post',
                dataType: 'json',
                contentType: 'application/json',
                success: function (data) {
                        console.log(data)
                        $("#ModalCenterTitle").html("Register Succsess !!!!");
                        $(".modal-body").html("server respond with code 200 to your request : "+data.firstname+" Is now one of our students for this session");
                },
                fail: function(){
                        $("#ModalCenterTitle").html(" Fail ");
                        $(".modal-body").html("server was unable to respond with code 200 to your request :please check your informations and try gain");
                },
                
                data: JSON.stringify(client)
            });

        return true    
}

function loadCourse(){
        loadAllSession();
        loadAll();
        renderList();
}


$(function() {
        $("#search").click(function(){
                if($("#navInput").val()=='' && $("#navDate").val() == '' && $("#navCity").val() ==''){
                loadCourse();
                }
                else{
                loadSessionFilter(""+$("#navDate").val(),""+$("#navInput").val(),""+$("#navCity").val());
                loadAll();
                formation_session = [];
           
                formations.forEach(element =>{
                        i = 0;
                        sessions.forEach(elt =>{
                                if (elt.course.title == element.title){
                                        i += 1 ;
                                }
                        });
                        if(i != 0){
                                formation_session.push(element);
                        }
                });
                formations = formation_session;
                renderList();
        }
        });

});

$(function() {
        $("#inscriptionBtn").click(function(){
                subscribe();
        });
});



function renderList(){
        contenCourHTML = "";
        var id = $("#contentCours");
        sessionHTML = "";

        id.html("");
        formations.forEach(element => {            
                contenCourHTML += '<div class="card w-75" id="cours">'; 
                contenCourHTML +='<div class="card-body">';
                contenCourHTML +='<h5 class="card-title">'+element.title+'</h5>';
                contenCourHTML += '<p class="card-text">'+element.libelle+'</p>';
                sessionHTML = ""
                sessionHTML +='<table class="table table-hover" id="tab">';
                sessionHTML += '<thead><tr><th scope="col">Sessions</th><th scope="col">Start Date</th><th scope="col">End Date</th><th scope="col">City</th><th scope="col">subscribed</th></tr></thead>';
                sessionHTML += '<tbody>';
                sessions.forEach(data => {
                        if(data.course.title == element.title){
                        sessionHTML += '<tr><th scope="row">'+data.id_session+'</th>';
                        sessionHTML += '<td>'+new Date(data.start_date).toDateString()+'</td>';
                        sessionHTML += '<td>'+new Date(data.end_date).toDateString()+'</td>';
                        sessionHTML += '<td>'+data.location.city+'</td>';
                        sessionHTML += '<td><a href="inscrire?id_session='+data.id_session+'"><button  class="btn btn-outline-primary"  type="button">'+(data.nbre_inscrit/data.nbre_place)*100+'%</button></a></td></tr>';
                        }
                });

                sessionHTML += '</tbody></table>';
                contenCourHTML += sessionHTML;
                contenCourHTML +='</div></div>';
                });

        id.html(contenCourHTML);  
}






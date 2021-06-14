<!DOCTYPE html>
<html lang="pt-br">
<!-- Compiled and minified CSS -->
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>         
<head>
    <meta charset="UTF-8">
    <title>CADASTRO</title>
 </head>
 
 <script>
 
$( document ).ready(function() {
    console.log( "ready!" );
    
    $('#enviarBTN').click(chama);
    
    
    function chama(){

	var nome=$('#nome').val();

	var dia=$('#dia').val();

	var mes=$('#mes').val();
	
	var ano=$('#ano').val();

	var passado= new Date(ano,mes-1,dia)
	var agora = new Date();
	
	if(nome==""||nome==null){
	  M.toast({html: 'NOME INCORRETO!'})
	}
	
if(passado > agora){
   M.toast({html: 'DATA INCORRETA!'})
   $('#dia').val("");
   $('#mes').val("");
   $('#ano').val("");
}

    
    }
    
    
    
});



 </script>
 
 
<body>

</div>
<form action="#">
    <p>
     <nav>
    <div class="nav-wrapper">
    <a id="#" class="waves-effect waves-light btn center">Faça seu Cadastro</a>



    </div>
  </nav>
	 
	 <label>
       <span>NOME:</span>
        <input placeholder="Digite seu nome "id="nome" name="nome" type="text"/>
       </label>
    
    
    <h3>Nascimento:</h3>
      <label>
       <span>DIA DO NASCIMENTO</span>
        <input placeholder="Dia" id="dia" name="dia" type="text"/>
       </label>
       </p>
       <p>
       <label>
       <span>MES DO NASCIMENTO</span>
        <input placeholder="Mes" id="mes" name="mes" type="text"/>
       </label>
    </p>
      <p>
       <label>
       <span>ANO DO NASCIMENTO</span>
        <input placeholder="Ano" id="ano" name="ano" type="text"/>
       </label>
	   <label>
       <span>CPF (Opcional)</span>
        <input placeholder="000.000.000.-00" id="cpf" name="cpf" type="text"/>
       </label>
    </p>
     <a id="enviarBTN" class="waves-effect waves-light btn center">ENVIAR</a>
       
  </form>

        



</body>

</html>
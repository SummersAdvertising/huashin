// JavaScript Document
$(function(){
	  var getQuery = QueryString("openDiv");
	  if(getQuery == "persimmon" ){ persimmon();
	  }else{
		  if(getQuery == "pear" ){ pear();
		  }else{
			  peach();
		  }
	  }
	  
	  function QueryString(name)
	  {
		  var AllVars = window.location.search.substring(1);
		  var Vars = AllVars.split("&");
		  for (i = 0; i < Vars.length; i++)
		  {
			  var Var = Vars[i].split("=");
			  if (Var[0] == name) return Var[1];
		  }
		  return "";
	  }
 	  
	  function peach(){
		  $("#peachIcon").removeClass("peach");
		  $("#pearIcon").removeClass("pear_p");
		  $("#persimmonIcon").removeClass("persimmon_p");
		  $("#peachIcon").addClass("peach_p");
		  $("#pearIcon").addClass("pear");
		  $("#persimmonIcon").addClass("persimmon");
		  
		  $("#pearBox").css("display","none");
		  $("#persimmonBox").css("display","none");
		  $("#peachBox").css("display","none");
		  $("#peachBox").fadeIn(500).show();
	  }
	  function pear(){
		  $("#peachIcon").removeClass("peach_p");
		  $("#pearIcon").removeClass("pear");
		  $("#persimmonIcon").removeClass("persimmon_p");
		  $("#peachIcon").addClass("peach");
		  $("#pearIcon").addClass("pear_p");
		  $("#persimmonIcon").addClass("persimmon");
		  
		  $("#peachBox").css("display","none");
		  $("#persimmonBox").css("display","none");
		  $("#pearBox").css("display","none");
		  $("#pearBox").fadeIn(500).show();
	  }
	  function persimmon(){
		  $("#peachIcon").removeClass("peach_p");
		  $("#pearIcon").removeClass("pear_p");
		  $("#persimmonIcon").removeClass("persimmon");
		  $("#peachIcon").addClass("peach");
		  $("#pearIcon").addClass("pear");
		  $("#persimmonIcon").addClass("persimmon_p");
		  
		  $("#peachBox").css("display","none");
		  $("#pearBox").css("display","none");
		  $("#persimmonBox").css("display","none");
		  $("#persimmonBox").fadeIn(500).show();
	  }
	
	  $("#peachIcon").click(function(){
		  $("#peachIcon").removeClass("peach");
		  $("#pearIcon").removeClass("pear_p");
		  $("#persimmonIcon").removeClass("persimmon_p");
		  $("#peachIcon").addClass("peach_p");
		  $("#pearIcon").addClass("pear");
		  $("#persimmonIcon").addClass("persimmon");
		  
		  $("#pearBox").css("display","none");
		  $("#persimmonBox").css("display","none");
		  $("#peachBox").css("display","none");
		  $("#peachBox").fadeIn(500).show();
	  });
	  $("#pearIcon").click(function(){
		  $("#peachIcon").removeClass("peach_p");
		  $("#pearIcon").removeClass("pear");
		  $("#persimmonIcon").removeClass("persimmon_p");
		  $("#peachIcon").addClass("peach");
		  $("#pearIcon").addClass("pear_p");
		  $("#persimmonIcon").addClass("persimmon");
		  
		  $("#peachBox").css("display","none");
		  $("#persimmonBox").css("display","none");
		  $("#pearBox").css("display","none");
		  $("#pearBox").fadeIn(500).show();
	  });
	  $("#persimmonIcon").click(function(){
		  $("#peachIcon").removeClass("peach_p");
		  $("#pearIcon").removeClass("pear_p");
		  $("#persimmonIcon").removeClass("persimmon");
		  $("#peachIcon").addClass("peach");
		  $("#pearIcon").addClass("pear");
		  $("#persimmonIcon").addClass("persimmon_p");
		  
		  $("#peachBox").css("display","none");
		  $("#pearBox").css("display","none");
		  $("#persimmonBox").css("display","none");
		  $("#persimmonBox").fadeIn(500).show();
	  });
});
	


function refreshCaptcha()
{
    var rand=Math.floor((Math.random()*1000000)+1);
	var img = document.images['captchaimg'];
	img.src = img.src.substring(0,img.src.lastIndexOf("?"))+"?rand="+rand;
	document.getElementById('cVtns').value=rand;
}

//------------------------------------------------------------------------------------------------------
var Endec=0;
 function convt_num_formt(no,showsign,Endec)
 {
  var nott=no.toString();
  var var_len=var_len_str.split('|');
  var var_oprt=var_oprt_str.split('|');
  var neg_synbl='';    if (nott<0){neg_synbl='-'; } //replace negative sign by nil space

  var expnp=((nott.split(".")).length)-1;
  var decstatus=1;       // not present
   if (expnp==1)  // present
     {
      decstatus=0;
      var fractional_len=nott.split('.');
      if (fractional_len[1].length==1){nott+="0";} //check fractional part of string
     }

     // decstatus ==1 not present // decstatus ==0 present

  // --------------- replace . dot by nil space
  var newno_str='';
  var noStrExp=nott.split("");

   for(var c=0;c<=(noStrExp.length-1);c++)
    {
     if(noStrExp[c]!='.' && noStrExp[c]!='-' ){ newno_str+=noStrExp[c];}
    }

  var nolength=(newno_str.length)-1;   //check string length for loop length
  var newno_expd=newno_str.split("");  //split the no into each part

  var outptno=''; var stg=0; var lopstg=1; var arrykeyno=decstatus;

  for(var a=nolength;a>=0;a--)
    {
         if (var_len[arrykeyno]==lopstg)
          {
           outptno+=newno_expd[a];
           if (stg<nolength){ outptno+=var_oprt[arrykeyno]; }
           arrykeyno++; lopstg=1;
          }
         else
          {
           outptno+=newno_expd[a];
           lopstg++;
          }
          stg++;
    }

  var newOutput='';  // Reverse String outptno
      for (i = 0; i <= outptno.length; i++)
       {
        newOutput = outptno.substring(i, i+1) + newOutput;
       }
  outptno=newOutput;

  if (Endec==1)   //not included cent or decimal part
       {
        exp=outptno.split(var_oprt[0]);
        outptno=exp[0];
       }

  if (Endec==2)   //not included cent or decimal part
       {
        exp=outptno.split(var_oprt[0]);
        if((parseFloat(exp[1])+0)>0) { exp[1]=exp[1]; } else { exp[1]="00"; }
        outptno=exp[0]+var_oprt[0]+exp[1];
       }

       if (showsign==1)
         {
          if (sign_position=='0') { return  '<span class=WebRupee>Rs.</span> '+neg_synbl+outptno; } //$ -123.90
          else  { return  neg_synbl+outptno+'<span class=WebRupee>Rs.</span> '; }  // -123.90 $
         }
       else {return  neg_synbl+outptno; }      // -123.90
 }


function getSearch()
 {
  if(document.getElementById('srhProd').value.replace(/ /gi,"")=='')
   {
     alert('please define your search in search box..');
     document.getElementById('srhProd').focus();
   }
  else
   {
    window.location='view_search.php?search='+escape(document.getElementById('srhProd').value);
   }
 }
 
function checkCustLogin_head()
 {
    document.getElementById('head_login_error').innerHTML='';
    if(checkCookies()==false)
        {
          alert('NOTICE :– Your Browser cookie functionality turned off. Please turned it on.');
        }
       else
        {
         var rememberMe=1;
         if(document.getElementById('cust_rem_head').checked==true) {rememberMe=5;}
         
         if(document.getElementById('cust_name_head').value.replace(/ /gi,"")=='')
          {
           document.getElementById('head_login_error').innerHTML='<font color="#FF0000">* Please fill your username to login.</font>';
           document.getElementById('cust_name_head').focus();
          }
         else if(document.getElementById('cust_pass_head').value.replace(/ /gi,"")=='')
          {
           document.getElementById('head_login_error').innerHTML='<font color="#FF0000">* Please fill your password to login.</font>';
           document.getElementById('cust_pass_head').focus();
          }
         else
           {
           
             document.getElementById('head_login_error').innerHTML='<font color="#0000ff">Wait checking login details...</font>';
             var url="check_customer_login.php?cust_name_head="+escape(document.getElementById('cust_name_head').value)+"&cust_pass_head="+escape(document.getElementById('cust_pass_head').value)+"&rnd="+Math.random();

             $.get(url,function(data){
              var dataSplit=data.split("~");
              if(dataSplit[0]=='VALID')
               {
                setCookie('CustLogin','VALID',rememberMe);
                setCookie('CustLogin[cust_id]',dataSplit[1],rememberMe);
                setCookie('CustLogin[cust_name]',dataSplit[2],rememberMe);
                setCookie('CustLogin[remember_login]',rememberMe,rememberMe);
                
                document.getElementById('head_login_error').innerHTML='<font color="#1D872B">Sucessfully verified login details..</font>';
                setTimeout("document.getElementById('head_login_error').innerHTML='';",4000);
                
                check_Customer_login();
              }
           else
             {
              document.getElementById('head_login_error').innerHTML='<font color="#FF0000">! Invalid login details. Try Again.</font>';
              document.getElementById('cust_name_head').focus();
              setTimeout("document.getElementById('head_login_error').innerHTML='';",4000);
             }
            });
          }
        }
 }
 

 function scrollToElement(pageElement)
  {
    var positionX = 0,
        positionY = 0;

    while(pageElement != null)
      {
        positionX += pageElement.offsetLeft;
        positionY += pageElement.offsetTop;
        pageElement = pageElement.offsetParent;
        window.scrollTo(positionX, positionY);
      }
  }
  
  
  //-------------------------------------------------------------
  



//-----------------------

function getCurrentPageSize()
  {
                              var xScroll, yScroll;
                              if (window.innerHeight && window.scrollMaxY)
             {
                                        xScroll = window.innerWidth + window.scrollMaxX;
                                        yScroll = window.innerHeight + window.scrollMaxY;
                               }
        else if (document.body.scrollHeight > document.body.offsetHeight)
            { // all but Explorer Mac
                                        xScroll = document.body.scrollWidth;
                                        yScroll = document.body.scrollHeight;
                              }
          else
            { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari
                                        xScroll = document.body.offsetWidth;
                                        yScroll = document.body.offsetHeight;
                              }
                              var windowWidth, windowHeight;
                              if (self.innerHeight)
              {    // all except Explorer
                                        if(document.documentElement.clientWidth){ windowWidth = document.documentElement.clientWidth;}
                else { windowWidth = self.innerWidth; }
                                        windowHeight = self.innerHeight;
                                }
            else if (document.documentElement && document.documentElement.clientHeight)
              { // Explorer 6 Strict Mode
                                        windowWidth = document.documentElement.clientWidth;
                                        windowHeight = document.documentElement.clientHeight;
                                }
           else if (document.body)
             { // other Explorers
                                        windowWidth = document.body.clientWidth;
                                        windowHeight = document.body.clientHeight;
                               }
                              // for small pages with total height less then height of the viewport
                              if(yScroll < windowHeight){  pageHeight = windowHeight; } else { pageHeight = yScroll; }
                              // for small pages with total width less then width of the viewport
                              if(xScroll < windowWidth){   pageWidth = xScroll; } else {pageWidth = windowWidth;}
                              arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight);
                              return arrayPageSize;
                    };



  function OpenHtOrd(dsp)
   {
    scrollTo(0,0);
    getCurrentPageSize();
    document.getElementById('HtOrd_main').style.width=arrayPageSize[0];
    document.getElementById('HtOrd_main').style.height=parseInt(arrayPageSize[1])+'px';
    document.getElementById('HtOrd_sub').style.left=parseInt((arrayPageSize[2]-600)/2)+'px';
    document.getElementById('HtOrd_main').style.display=dsp;
    document.getElementById('HtOrd_sub').style.display=dsp;
   }
//-----------------------


function IsChkNumc(obj)
   {
    var strValidChars = "0123456789.";
      var strString=obj.value;
      var expStrng=strString.split("");
      var strStringLength=expStrng.length;
      var NewString='';
      for(var a=0;a<strStringLength;a++)
       {
         if(strValidChars.indexOf(strString.charAt(a)) == -1){}
         else { NewString+=strString.charAt(a); }
       }
     if(strString!=NewString) {  obj.value=NewString; }
   }

function checkNum(obj)
 {
  if(obj.value.replace(/ /gi,'')=='') {obj.value=0;}
 }
function wopen(url,name,w,h)
{
  wleft = (screen.width - w) / 2;
  wtop = (screen.height - h) / 2;

  if (wleft < 0) {  w = screen.width;  wleft = 0; }
  if (wtop < 0)  {  h = screen.height;  wtop = 0; }

  var win = window.open(url,name,'width=' + w + ', height=' + h + ', ' +'left=' + wleft + ', top=' + wtop + ', ' +'location=no, menubar=no, ' + 'status=no, toolbar=no, scrollbars=yes, resizable=yes');

  win.resizeTo(w, h);
  win.moveTo(wleft, wtop);
  win.focus();
}

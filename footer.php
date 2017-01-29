<div class="ftr-bg">
  <div class="wrap">
    <div class="footer">
     <div class="f_nav">
      <p>
       <h2>Contact Us </h2>	
       <ol> 
       <li>9855552889</li>
       <li> <a href="mailto:atbchd@gmail.com">atbchd@gmail.com</a></li>
       
       <li><a href="http://www.facebook.com/atbchd">www.fb.com/atbchd</li></a>
       </p>
       

     </ul>
   </div>
   
   <div class="clear"></div>
 </div>
</div>
</div>

<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function()
      {
        $('select').change(getList);
        getList();
        function getList()
        {
          var url, target;
          var id = $(this).attr('id');
          if(id!=undefined)
          var selectedValue = $(this).val();
          switch (id)
          {
            case 'stateList':
            if(selectedValue == '') return;
            url = 'results.php?find=district&id='+ selectedValue;
            target = 'districtList';
            break;
            case 'districtList':
            if($(this).val() == '') return;
            url = 'results.php?find=city&id='+ selectedValue;
            target = 'townList';
            break;
            case 'townList':
            /*if($(this).val() == '') return;
            url = 'results.php?find=information&id='+ selectedValue;
            target = 'information';*/
            break;
            default:
            url = 'results.php?find=state';
            target = 'stateList';
          }
          $.get(
            url,
            { },
            function(data)
            {
              $('#'+target).html(data);
            }
            )
        }
      });
    </script>

</body>
</html>
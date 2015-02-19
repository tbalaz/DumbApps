$files = Get-ChildItem -Path F:\Downloads -File | Select-Object Extension -Unique

$sort = Get-ChildItem -Path F:\Downloads -File




foreach($i in $files){

    $extname =  $i.Extension.Split('.')[1]
   
    New-Item -Type Directory -Path f:\downloads\_$extname"_files" -Force

    $path = Get-ChildItem -Path f:\downloads -Directory

    foreach($s in $sort){
           
        if($s.Extension -eq $i.Extension){
        
            Move-Item -Path $s.PSPath -Destination f:\_$extname"_files"
            
            }     
        
        }

    }









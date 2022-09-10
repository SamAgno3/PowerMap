$banner = @"
 ######                              #     #               
 #     #  ####  #    # ###### #####  ##   ##   ##   #####  
 #     # #    # #    # #      #    # # # # #  #  #  #    # 
 ######  #    # #    # #####  #    # #  #  # #    # #    # 
 #       #    # # ## # #      #####  #     # ###### #####  
 #       #    # ##  ## #      #   #  #     # #    # #      
 #        ####  #    # ###### #    # #     # #    # #      
                                                           
"@
Write-Host $banner
Write-Host "Currently work-in-progress. By SamAgno3, see github.com/SamAgno3/PowerMap."
Write-Host "Currently only allows for full TCP scans of a single IP Address. More features coming soon."
$target_ip = Read-Host -Prompt "Enter IP Address"
Write-Host "Scanning " $target_ip
1..65535 | % {echo ((new-object Net.Sockets.TcpClient).Connect($target_ip,$_)) “Port $_ is open!”} 



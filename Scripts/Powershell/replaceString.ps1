<# replace refprop version in documents #>
$pathvar = "C:\tmp\quick"
$i = 1
gci -Path $pathvar -include *.json -recurse | ForEach {

  (Get-Content -Raw $_ | ForEach {$_ -replace "CRefpropFunctions\(2023-08-21", "CRefpropFunctions(2023-08-29"}) | if ($_ -contains "2023-08-21") {Set-Content $_}
  
    Write-Progress -Activity "Search in Progress" -Status "$i% Complete:" -PercentComplete $i
    Start-Sleep -Milliseconds 50
  $i++
  if ( $i -ge 99 )
    {
      $i = 0  
      }
}
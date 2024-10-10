Get-Process audiodg | ForEach-Object {
    $_.ProcessorAffinity=1
    $_.PriorityClass='Realtime'
}

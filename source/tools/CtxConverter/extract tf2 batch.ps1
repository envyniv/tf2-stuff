Get-ChildItem "scripts" -Filter *.ctx | 
Foreach-Object {
    $content = $_.FullName
    echo $content
    .\vice -d -x .txt -k E2NcUkG2 $content
}
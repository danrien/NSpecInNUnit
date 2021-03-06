param (
  [Parameter(Mandatory=$true)]
  [string]$apikey
)

$items = (get-item *.nupkg)
if ($items.Count -ne 1) {
  throw "Expected exactly 1 nupkg file"
}

$pkg = $items[0]

write-host "Will push $pkg using API key $apikey"
$result = (read-host "Type 'ok' to continue")
if ($result -ne "ok") {
  throw "Aborted"
}

nuget setApiKey $apikey
nuget push $pkg -Source https://www.nuget.org/api/v2/package


# Set the repo root (current folder)
$folder = Get-Location

# Folders/files to exclude
$exclude = @('node_modules', '.git')

# Maximum depth
$maxDepth = 4

# Output file
$outputFile = "$($folder.Path)\repo_structure.md"

# Recursive function to build tree
function Get-RepoTree {
    param (
        [string]$Path,
        [int]$Depth = 0
    )

    if ($Depth -ge $maxDepth) { return }  # Stop recursion beyond max depth

    $items = Get-ChildItem -Path $Path -Force | Where-Object { $exclude -notcontains $_.Name }

    foreach ($item in $items) {
        $indent = '    ' * $Depth  # 4 spaces per level
        if ($item.PSIsContainer) {
            "$indent+-- $($item.Name)/" | Out-File -FilePath $outputFile -Append
            Get-RepoTree -Path $item.FullName -Depth ($Depth + 1)
        } else {
            "$indent+-- $($item.Name)" | Out-File -FilePath $outputFile -Append
        }
    }
}

# Initialize output file
"# Project: $($folder.Name)`n" | Out-File -FilePath $outputFile

# Generate the repo tree
Get-RepoTree -Path $folder.Path

Write-Output "✅ Repo structure exported to $outputFile (4 levels deep)"

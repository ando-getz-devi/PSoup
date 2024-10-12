function Extract-Urls {
        param(
                [String]$url
        )
        Get-PageSoup $url
          | Select-String -Pattern 'https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)' -AllMatches
          | % { $_.Matches }
          | % { $_.Value }
          | Group-Object -Property $_
          | Sort-Object -Property Count -Descending
          | Select-Object Count, Name
}

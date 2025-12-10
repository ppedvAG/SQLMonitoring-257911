$cert = New-SelfSignedCertificate `
    -DnsName "BIGBEN", "BIGBEN.sql.local" `
    -CertStoreLocation "cert:\LocalMachine\My" `
    -FriendlyName "SQL-Server-SelfSigned" `
    -KeySpec KeyExchange `
    -TextExtension @("2.5.29.37={text}1.3.6.1.5.5.7.3.1") `
    -KeyLength 2048

Write-Host "Zertifikat erstellt mit Thumbprint: $($cert.Thumbprint)"

# Dienste benötigen Leserechte auf das Zertifikat
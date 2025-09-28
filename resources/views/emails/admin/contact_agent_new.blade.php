<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Agent Contact</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box}
        body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;line-height:1.6;color:#111827;background:#f9fafb;padding:20px}
        .container{max-width:640px;margin:0 auto;background:#fff;border-radius:12px;box-shadow:0 10px 20px rgba(0,0,0,.06);overflow:hidden;border:1px solid #f3f4f6}
        .header{background:linear-gradient(135deg,#f97316 0%,#ea580c 100%);padding:20px 24px;color:#fff}
        h1{font-size:20px}
        .content{padding:24px}
        ul{list-style:none}
        li{margin-bottom:8px}
    </style>
</head>
<body>
<div class="container">
    <div class="header"><h1>New Agent Contact</h1></div>
    <div class="content">
        <ul>
            <li><strong>Property ID:</strong> {{ $contact['property_id'] ?? '-' }}</li>
            <li><strong>Name:</strong> {{ $contact['full_name'] ?? '-' }}</li>
            <li><strong>Email:</strong> {{ $contact['email'] ?? '-' }}</li>
            <li><strong>Phone:</strong> {{ $contact['phone_number'] ?? '—' }}</li>
            <li><strong>Message:</strong> {{ $contact['message'] ?? '' }}</li>
        </ul>
    </div>
</div>
</body>
</html>



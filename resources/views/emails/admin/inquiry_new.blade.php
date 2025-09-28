<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Property Inquiry</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box}
        body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;line-height:1.6;color:#111827;background:#f9fafb;padding:20px}
        .container{max-width:640px;margin:0 auto;background:#fff;border-radius:12px;box-shadow:0 10px 20px rgba(0,0,0,.06);overflow:hidden;border:1px solid #f3f4f6}
        .header{background:linear-gradient(135deg,#f97316 0%,#ea580c 100%);padding:20px 24px;color:#fff}
        h1{font-size:20px}
        .content{padding:24px}
        ul{list-style:none}
        li{margin-bottom:8px}
        .muted{color:#6b7280}
    </style>
</head>
<body>
<div class="container">
    <div class="header"><h1>New Property Inquiry</h1></div>
    <div class="content">
        <p><strong>Property:</strong> {{ $inquiry['property']['title'] ?? ('#'.$inquiry['property']['id'] ?? '') }}</p>
        <ul>
            <li><strong>Name:</strong> {{ $inquiry['name'] ?? '-' }}</li>
            <li><strong>Email:</strong> {{ $inquiry['email'] ?? '-' }}</li>
            <li><strong>Phone:</strong> {{ $inquiry['phone'] ?? '—' }}</li>
            <li><strong>Type:</strong> {{ ucfirst($inquiry['inquiry_type'] ?? 'general') }}</li>
            <li><strong>Preferred:</strong> {{ $inquiry['preferred'] ?? '—' }}</li>
        </ul>
        <p class="muted">Message</p>
        <p>{{ $inquiry['message'] ?? '' }}</p>
    </div>
</div>
</body>
</html>



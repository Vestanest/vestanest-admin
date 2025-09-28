<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Viewing Scheduled - VestaNest</title>
    <style>
        * { margin:0; padding:0; box-sizing:border-box; }
        body { font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; line-height:1.6; color:#111827; background:linear-gradient(135deg, #f97316 0%, #ea580c 100%); min-height:100vh; padding:20px; }
        .email-container { max-width:600px; margin:0 auto; background:#ffffff; border-radius:20px; box-shadow:0 20px 40px rgba(0,0,0,0.1); overflow:hidden; }
        .header { background:linear-gradient(135deg, #f97316 0%, #ea580c 100%); padding:40px 30px; text-align:center; position:relative; }
        .header::before { content:''; position:absolute; inset:0; background:url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grain" width="100" height="100" patternUnits="userSpaceOnUse"><circle cx="25" cy="25" r="1" fill="white" opacity="0.1"/><circle cx="75" cy="75" r="1" fill="white" opacity="0.1"/><circle cx="50" cy="10" r="0.5" fill="white" opacity="0.1"/><circle cx="10" cy="60" r="0.5" fill="white" opacity="0.1"/><circle cx="90" cy="40" r="0.5" fill="white" opacity="0.1"/></pattern></defs><rect width="100" height="100" fill="url(%23grain)"/></svg>'); opacity:0.3; }
        .logo { position:relative; z-index:1; }
        .logo h1 { color:#ffffff; font-size:2.5rem; font-weight:700; margin-bottom:10px; text-shadow:0 2px 4px rgba(0,0,0,0.3); }
        .logo .tagline { color:rgba(255,255,255,0.9); font-size:1rem; font-weight:300; letter-spacing:1px; }
        .type-badge { display:inline-block; background:rgba(255,255,255,0.2); color:#ffffff; padding:8px 20px; border-radius:25px; font-size:0.9rem; font-weight:500; margin-top:15px; backdrop-filter:blur(10px); border:1px solid rgba(255,255,255,0.3); }
        .content { padding:50px 40px; background:#ffffff; }
        .greeting { font-size:1.3rem; color:#111827; margin-bottom:20px; font-weight:600; }
        .message { font-size:1.1rem; color:#374151; margin-bottom:24px; line-height:1.8; }
        .panel { background:#f9fafb; border-left:4px solid #f97316; padding:25px; margin:20px 0; border-radius:0 10px 10px 0; }
        .panel h3 { color:#111827; font-size:1.1rem; margin-bottom:15px; font-weight:600; }
        .list { list-style:none; padding:0; }
        .list li { color:#374151; margin-bottom:10px; padding-left:25px; position:relative; font-size:0.95rem; }
        .list li::before { content:'🗓️'; position:absolute; left:0; top:0; }
        .footer { background:#111827; color:#9ca3af; padding:30px; text-align:center; }
        .footer-logo { color:#ffffff; font-size:1.5rem; font-weight:700; margin-bottom:15px; }
        .footer-text { font-size:0.9rem; line-height:1.6; margin-bottom:20px; }
        .support { background:#f3f4f6; padding:30px; border-radius:15px; text-align:center; margin:30px 0; }
        .contact-info { display:flex; justify-content:center; gap:30px; flex-wrap:wrap; }
        .contact-item { display:flex; align-items:center; gap:8px; color:#f97316; font-weight:500; }
        @media (max-width:600px){ .email-container{ margin:10px; border-radius:15px;} .header{ padding:30px 20px;} .logo h1{ font-size:2rem;} .content{ padding:30px 25px;} }
    </style>
    </head>
<body>
    <div class="email-container">
        <div class="header">
            <div class="logo">
                <h1>🏠 VestaNest</h1>
                <div class="tagline">Your Dream Home Awaits</div>
                <div class="type-badge">Viewing Scheduled</div>
            </div>
        </div>
        <div class="content">
            <div class="greeting">Hello {{ $schedule['full_name'] ?? 'there' }}! 👋</div>
            <div class="message">
                Your property viewing has been scheduled. We look forward to meeting you!
            </div>
            <div class="panel">
                <h3>📍 Appointment Details</h3>
                <ul class="list">
                    <li><strong>Property ID:</strong> {{ $schedule['property_id'] ?? '-' }}</li>
                    <li><strong>Date:</strong> {{ $schedule['preferred_date'] ?? 'TBD' }}</li>
                    <li><strong>Time:</strong> {{ $schedule['preferred_time'] ?? 'TBD' }}</li>
                    <li><strong>Notes:</strong> {{ $schedule['notes'] ?? '—' }}</li>
                </ul>
            </div>
            <div class="support">
                <h3>Need to reschedule? 🔄</h3>
                <p>Reply to this email or contact support and we’ll assist.</p>
                <div class="contact-info">
                    <div class="contact-item"><span>📧</span><span>support@vestanest.com</span></div>
                    <div class="contact-item"><span>📞</span><span>+1 (555) 123-4567</span></div>
                </div>
            </div>
            <div style="text-align:center; margin-top: 10px; color:#374151;">Best regards,<br><strong>The VestaNest Team</strong></div>
        </div>
        <div class="footer">
            <div class="footer-logo">🏠 VestaNest</div>
            <div class="footer-text">Your trusted partner in finding the perfect home.</div>
        </div>
    </div>
</body>
</html>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $type }} - VestaNest</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #111827;
            background: linear-gradient(135deg, #f97316 0%, #ea580c 100%);
            min-height: 100vh;
            padding: 20px;
        }

        .email-container {
            max-width: 600px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .header {
            background: linear-gradient(135deg, #f97316 0%, #ea580c 100%);
            padding: 40px 30px;
            text-align: center;
            position: relative;
        }

        .header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grain" width="100" height="100" patternUnits="userSpaceOnUse"><circle cx="25" cy="25" r="1" fill="white" opacity="0.1"/><circle cx="75" cy="75" r="1" fill="white" opacity="0.1"/><circle cx="50" cy="10" r="0.5" fill="white" opacity="0.1"/><circle cx="10" cy="60" r="0.5" fill="white" opacity="0.1"/><circle cx="90" cy="40" r="0.5" fill="white" opacity="0.1"/></pattern></defs><rect width="100" height="100" fill="url(%23grain)"/></svg>');
            opacity: 0.3;
        }

        .logo {
            position: relative;
            z-index: 1;
        }

        .logo h1 {
            color: #ffffff;
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 10px;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
        }

        .logo .tagline {
            color: rgba(255, 255, 255, 0.9);
            font-size: 1rem;
            font-weight: 300;
            letter-spacing: 1px;
        }

        .type-badge {
            display: inline-block;
            background: rgba(255, 255, 255, 0.2);
            color: #ffffff;
            padding: 8px 20px;
            border-radius: 25px;
            font-size: 0.9rem;
            font-weight: 500;
            margin-top: 15px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .content {
            padding: 50px 40px;
            background: #ffffff;
        }

        .greeting {
            font-size: 1.3rem;
            color: #111827;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .message {
            font-size: 1.1rem;
            color: #374151;
            margin-bottom: 40px;
            line-height: 1.8;
        }

        .otp-container {
            text-align: center;
            margin: 40px 0;
        }

        .otp-label {
            color: #6b7280;
            font-size: 0.9rem;
            margin-bottom: 15px;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 500;
        }

        .otp-code {
            background: linear-gradient(135deg, #f97316 0%, #ea580c 100%);
            color: #ffffff;
            font-size: 2.5rem;
            font-weight: 700;
            text-align: center;
            padding: 25px;
            border-radius: 15px;
            margin: 0 auto;
            letter-spacing: 8px;
            box-shadow: 0 10px 30px rgba(249, 115, 22, 0.3);
            position: relative;
            overflow: hidden;
            max-width: 300px;
        }

        .otp-code::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            animation: shine 3s infinite;
        }

        @keyframes shine {
            0% { left: -100%; }
            50% { left: 100%; }
            100% { left: 100%; }
        }

        .otp-digits {
            position: relative;
            z-index: 1;
        }

        .security-info {
            background: #f9fafb;
            border-left: 4px solid #f97316;
            padding: 25px;
            margin: 30px 0;
            border-radius: 0 10px 10px 0;
        }

        .security-info h3 {
            color: #111827;
            font-size: 1.1rem;
            margin-bottom: 15px;
            font-weight: 600;
        }

        .security-list {
            list-style: none;
            padding: 0;
        }

        .security-list li {
            color: #374151;
            margin-bottom: 10px;
            padding-left: 25px;
            position: relative;
            font-size: 0.95rem;
        }

        .security-list li::before {
            content: '🔒';
            position: absolute;
            left: 0;
            top: 0;
        }

        .expiry-info {
            background: linear-gradient(135deg, #fef3c7 0%, #fde68a 100%);
            color: #7c2d12;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            margin: 30px 0;
            font-weight: 500;
        }

        .expiry-info .icon {
            font-size: 1.5rem;
            margin-bottom: 10px;
            display: block;
        }

        .support-section {
            background: #f3f4f6;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            margin: 30px 0;
        }

        .support-section h3 {
            color: #111827;
            margin-bottom: 15px;
            font-weight: 600;
        }

        .support-section p {
            color: #374151;
            margin-bottom: 20px;
        }

        .contact-info {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .contact-item {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #f97316;
            font-weight: 500;
        }

        .footer {
            background: #111827;
            color: #9ca3af;
            padding: 30px;
            text-align: center;
        }

        .footer-content {
            max-width: 400px;
            margin: 0 auto;
        }

        .footer-logo {
            color: #ffffff;
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .footer-text {
            font-size: 0.9rem;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 20px;
        }

        .social-link {
            color: #bdc3c7;
            text-decoration: none;
            font-size: 1.2rem;
            transition: color 0.3s ease;
        }

        .social-link:hover {
            color: #f97316;
        }

        .disclaimer {
            font-size: 0.8rem;
            color: #6b7280;
            border-top: 1px solid #374151;
            padding-top: 20px;
        }

        @media (max-width: 600px) {
            .email-container {
                margin: 10px;
                border-radius: 15px;
            }

            .header {
                padding: 30px 20px;
            }

            .logo h1 {
                font-size: 2rem;
            }

            .content {
                padding: 30px 25px;
            }

            .otp-code {
                font-size: 2rem;
                letter-spacing: 6px;
                padding: 20px;
            }

            .contact-info {
                flex-direction: column;
                gap: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="email-container">
        <!-- Header Section -->
        <div class="header">
            <div class="logo">
                <h1>🏠 VestaNest</h1>
                <div class="tagline">Your Dream Home Awaits</div>
                <div class="type-badge">{{ $type }}</div>
            </div>
        </div>

        <!-- Main Content -->
        <div class="content">
            <div class="greeting">Hello there! 👋</div>

            <div class="message">
                You've requested a <strong>{{ strtolower($type) }}</strong> for your VestaNest account.
                To complete this process, please use the verification code below:
            </div>

            <!-- OTP Code Section -->
            <div class="otp-container">
                <div class="otp-label">Your Verification Code</div>
                <div class="otp-code">
                    <div class="otp-digits">{{ $otpCode }}</div>
                </div>
            </div>

            <!-- Expiry Information -->
            <div class="expiry-info">
                <span class="icon">⏰</span>
                <strong>This code expires in {{ $type === 'Email Verification' ? '10' : '15' }} minutes</strong>
            </div>

            <!-- Security Information -->
            <div class="security-info">
                <h3>🛡️ Security Reminders</h3>
                <ul class="security-list">
                    <li>Never share this code with anyone</li>
                    <li>VestaNest will never ask for your verification code</li>
                    <li>If you didn't request this, please ignore this email</li>
                    <li>For your security, this code can only be used once</li>
                </ul>
            </div>

            <!-- Support Section -->
            <div class="support-section">
                <h3>Need Help? 🤝</h3>
                <p>If you're having trouble or didn't request this verification, our support team is here to help.</p>
                <div class="contact-info">
                    <div class="contact-item">
                        <span>📧</span>
                        <span>support@vestanest.com</span>
                    </div>
                    <div class="contact-item">
                        <span>📞</span>
                        <span>+1 (555) 123-4567</span>
                    </div>
                </div>
            </div>

            <div style="text-align: center; margin-top: 40px; color: #374151;">
                <p>Best regards,<br><strong>The VestaNest Team</strong></p>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <div class="footer-content">
                <div class="footer-logo">🏠 VestaNest</div>
                <div class="footer-text">
                    Your trusted partner in finding the perfect home.
                    Connecting dreams with reality, one property at a time.
                </div>

                <div class="social-links">
                    <a href="#" class="social-link">📘</a>
                    <a href="#" class="social-link">🐦</a>
                    <a href="#" class="social-link">📷</a>
                    <a href="#" class="social-link">💼</a>
                </div>

                <div class="disclaimer">
                    This is an automated message. Please do not reply to this email.<br>
                    © 2024 VestaNest. All rights reserved.
                </div>
            </div>
        </div>
    </div>
</body>
</html>

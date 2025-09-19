# VestaNest API Authentication Documentation

## Overview
This document describes the authentication API endpoints for VestaNest, a real estate platform. The API uses Laravel Sanctum for token-based authentication and includes OTP (One-Time Password) verification for email verification and password reset functionality.

## Base URL
```
http://localhost:8000/api/v1
```

## Authentication Flow

### 1. User Registration
**Endpoint:** `POST /auth/register`

**Description:** Register a new user account. An OTP will be sent to the provided email for verification.

**Request Body:**
```json
{
    "first_name": "John",
    "last_name": "Doe", 
    "email": "john@example.com",
    "password": "password123",
    "password_confirmation": "password123",
    "phone": "+1234567890"
}
```

**Response:**
```json
{
    "success": true,
    "message": "User registered successfully. Please verify your email with the OTP sent.",
    "data": {
        "user": {
            "id": 22,
            "first_name": "John",
            "last_name": "Doe",
            "email": "john@example.com",
            "phone": "+1234567890",
            "is_verified": false,
            "is_active": true
        }
    }
}
```

### 2. Email Verification
**Endpoint:** `POST /auth/verify-email`

**Description:** Verify user email using the OTP code sent during registration.

**Request Body:**
```json
{
    "email": "john@example.com",
    "otp_code": "903028"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Email verified successfully",
    "data": {
        "user": {
            "id": 22,
            "first_name": "John",
            "last_name": "Doe",
            "email": "john@example.com",
            "phone": "+1234567890",
            "is_verified": true,
            "is_active": true
        }
    }
}
```

### 3. Resend Email OTP
**Endpoint:** `POST /auth/resend-email-otp`

**Description:** Resend OTP code for email verification.

**Request Body:**
```json
{
    "email": "john@example.com"
}
```

**Response:**
```json
{
    "success": true,
    "message": "OTP sent successfully"
}
```

### 4. User Login
**Endpoint:** `POST /auth/login`

**Description:** Authenticate user and return access token.

**Request Body:**
```json
{
    "email": "john@example.com",
    "password": "password123"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Login successful",
    "data": {
        "user": {
            "id": 22,
            "first_name": "John",
            "last_name": "Doe",
            "email": "john@example.com",
            "phone": "+1234567890",
            "is_verified": true,
            "is_active": true,
            "last_login_at": "2025-09-19T00:43:54.000000Z"
        },
        "token": "1|aAoguKTI88Ay7TXXmadlUnGsH4o3gG3u4Kslfsqy5d613151",
        "token_type": "Bearer"
    }
}
```

## Protected Endpoints (Require Authentication)

All protected endpoints require the `Authorization` header with the Bearer token:
```
Authorization: Bearer 1|aAoguKTI88Ay7TXXmadlUnGsH4o3gG3u4Kslfsqy5d613151
```

### 5. Get User Profile
**Endpoint:** `GET /auth/profile`

**Description:** Get authenticated user's profile information.

**Headers:**
```
Authorization: Bearer {token}
```

**Response:**
```json
{
    "success": true,
    "data": {
        "user": {
            "id": 22,
            "first_name": "John",
            "last_name": "Doe",
            "email": "john@example.com",
            "phone": "+1234567890",
            "avatar_url": null,
            "is_verified": true,
            "is_active": true,
            "email_verified_at": "2025-09-19T00:44:15.000000Z",
            "phone_verified_at": null,
            "last_login_at": "2025-09-19T00:43:54.000000Z",
            "created_at": "2025-09-19T00:43:34.000000Z",
            "updated_at": "2025-09-19T00:44:15.000000Z"
        }
    }
}
```

### 6. Update User Profile
**Endpoint:** `PUT /auth/profile`

**Description:** Update authenticated user's profile information.

**Headers:**
```
Authorization: Bearer {token}
```

**Request Body:**
```json
{
    "first_name": "John",
    "last_name": "Smith",
    "phone": "+1987654321",
    "avatar_url": "https://example.com/avatar.jpg"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Profile updated successfully",
    "data": {
        "user": {
            "id": 22,
            "first_name": "John",
            "last_name": "Smith",
            "email": "john@example.com",
            "phone": "+1987654321",
            "avatar_url": "https://example.com/avatar.jpg",
            "is_verified": true,
            "is_active": true
        }
    }
}
```

### 7. Change Password
**Endpoint:** `POST /auth/change-password`

**Description:** Change user's password (requires current password).

**Headers:**
```
Authorization: Bearer {token}
```

**Request Body:**
```json
{
    "current_password": "password123",
    "new_password": "newpassword123",
    "new_password_confirmation": "newpassword123"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Password changed successfully"
}
```

### 8. Logout
**Endpoint:** `POST /auth/logout`

**Description:** Logout from current device (revoke current token).

**Headers:**
```
Authorization: Bearer {token}
```

**Response:**
```json
{
    "success": true,
    "message": "Logout successful"
}
```

### 9. Logout from All Devices
**Endpoint:** `POST /auth/logout-all`

**Description:** Logout from all devices (revoke all tokens).

**Headers:**
```
Authorization: Bearer {token}
```

**Response:**
```json
{
    "success": true,
    "message": "Logged out from all devices"
}
```

### 10. Refresh Token
**Endpoint:** `POST /auth/refresh-token`

**Description:** Refresh the current access token.

**Headers:**
```
Authorization: Bearer {token}
```

**Response:**
```json
{
    "success": true,
    "message": "Token refreshed successfully",
    "data": {
        "token": "2|newTokenStringHere",
        "token_type": "Bearer"
    }
}
```

## Password Reset Flow

### 11. Forgot Password
**Endpoint:** `POST /auth/forgot-password`

**Description:** Request password reset OTP.

**Request Body:**
```json
{
    "email": "john@example.com"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Password reset OTP sent to your email"
}
```

### 12. Reset Password
**Endpoint:** `POST /auth/reset-password`

**Description:** Reset password using OTP code.

**Request Body:**
```json
{
    "email": "john@example.com",
    "otp_code": "123456",
    "password": "newpassword123",
    "password_confirmation": "newpassword123"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Password reset successfully. Please login again."
}
```

## Error Responses

### Validation Errors (422)
```json
{
    "success": false,
    "message": "Validation failed",
    "errors": {
        "email": ["The email field is required."],
        "password": ["The password must be at least 8 characters."]
    }
}
```

### Authentication Errors (401)
```json
{
    "success": false,
    "message": "Invalid credentials"
}
```

### Not Found Errors (404)
```json
{
    "success": false,
    "message": "User not found"
}
```

### Bad Request Errors (400)
```json
{
    "success": false,
    "message": "Invalid or expired OTP"
}
```

## OTP System

- **OTP Length:** 6 digits
- **Email Verification OTP Expiry:** 10 minutes
- **Password Reset OTP Expiry:** 15 minutes
- **OTP Types:** `email_verification`, `password_reset`
- **OTP Usage:** Single-use (automatically invalidated after use)

## Security Features

1. **Token-based Authentication:** Using Laravel Sanctum
2. **OTP Verification:** For email verification and password reset
3. **Password Hashing:** Using Laravel's Hash facade
4. **Token Expiry:** Tokens can be refreshed or revoked
5. **Account Status:** Users can be deactivated
6. **Email Verification:** Required for account activation

## Testing

You can test the API endpoints using curl, Postman, or any HTTP client. Make sure to:

1. Use the correct base URL
2. Include proper headers (`Content-Type: application/json`, `Accept: application/json`)
3. Include the `Authorization` header for protected endpoints
4. Handle the Bearer token from login responses

## Development Notes

- OTP codes are logged to the Laravel log for development/testing purposes
- Email sending is implemented but may need configuration for production
- All endpoints return consistent JSON responses with `success`, `message`, and `data` fields
- The API follows RESTful conventions and uses appropriate HTTP status codes

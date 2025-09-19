# VestaNest Properties API Documentation

## Overview
This document describes the properties-related API endpoints for VestaNest, including property listings, amenities, and property views tracking.

## Base URL
```
http://localhost:8000/api/v1
```

## Properties Endpoints

### 1. Get All Properties
**Endpoint:** `GET /properties`

**Description:** Retrieve a paginated list of properties with advanced filtering and sorting options.

**Query Parameters:**
- `page` (optional): Page number (default: 1)
- `per_page` (optional): Items per page (default: 15, max: 100)
- `search` (optional): Search in title, description, location, city
- `property_type` (optional): Filter by type (apartment, house, condo, villa, townhouse, studio, commercial, land)
- `price_type` (optional): Filter by price type (sale, rent)
- `min_price` (optional): Minimum price filter
- `max_price` (optional): Maximum price filter
- `bedrooms` (optional): Minimum number of bedrooms
- `bathrooms` (optional): Minimum number of bathrooms
- `location` (optional): Filter by location
- `city` (optional): Filter by city
- `region` (optional): Filter by region
- `is_featured` (optional): Filter featured properties (true/false)
- `status` (optional): Filter by status (available, sold, rented, off_market)
- `sort_by` (optional): Sort by (price_asc, price_desc, created_at_desc, created_at_asc, views_count_desc, rating_desc)
- `amenities` (optional): Array of amenity IDs to filter by

**Example Request:**
```
GET /api/v1/properties?property_type=apartment&price_type=sale&min_price=100000&max_price=500000&bedrooms=2&sort_by=price_asc&per_page=10
```

**Response:**
```json
{
    "success": true,
    "data": {
        "properties": [
            {
                "id": 1,
                "title": "Luxury Penthouse in Accra",
                "description": "Stunning penthouse with panoramic city views",
                "image": "properties/luxury-penthouse-accra.jpg",
                "images": ["properties/luxury-penthouse-accra-1.jpg", "..."],
                "location": "Airport Residential Area, Accra",
                "city": "Accra",
                "region": "Greater Accra",
                "latitude": "5.60370000",
                "longitude": "-0.18700000",
                "price": "2500000.00",
                "formatted_price": "GH¢ 2,500,000.00",
                "price_type": "sale",
                "property_type": "apartment",
                "bedrooms": 4,
                "bathrooms": 3,
                "area_sqm": "250.00",
                "area_sqft": "2690.00",
                "year_built": 2020,
                "floors": 1,
                "parking_spaces": 2,
                "is_featured": true,
                "status": "available",
                "views_count": 150,
                "favorites_count": 25,
                "rating": "4.80",
                "owner": {
                    "id": 7,
                    "name": "Haley King",
                    "email": "agent3@vestanest.com"
                },
                "agent": {
                    "id": 9,
                    "name": "Taryn Wisoky",
                    "email": "agent5@vestanest.com"
                },
                "amenities": [
                    {
                        "id": 4,
                        "name": "Balcony",
                        "description": "Private balcony with outdoor space"
                    }
                ],
                "created_at": "2025-09-18T23:47:33.000000Z",
                "updated_at": "2025-09-18T23:47:33.000000Z"
            }
        ],
        "pagination": {
            "current_page": 1,
            "last_page": 2,
            "per_page": 15,
            "total": 25,
            "from": 1,
            "to": 15
        },
        "filters": {
            "applied_filters": {
                "property_type": "apartment",
                "price_type": "sale"
            }
        }
    }
}
```

### 2. Get Single Property
**Endpoint:** `GET /properties/{id}`

**Description:** Retrieve detailed information about a specific property.

**Response:**
```json
{
    "success": true,
    "data": {
        "property": {
            "id": 1,
            "title": "Luxury Penthouse in Accra",
            "description": "Stunning penthouse with panoramic city views",
            "detailed_description": "Full detailed description...",
            "image": "properties/luxury-penthouse-accra.jpg",
            "images": ["properties/luxury-penthouse-accra-1.jpg", "..."],
            "location": "Airport Residential Area, Accra",
            "city": "Accra",
            "region": "Greater Accra",
            "latitude": "5.60370000",
            "longitude": "-0.18700000",
            "price": "2500000.00",
            "formatted_price": "GH¢ 2,500,000.00",
            "price_type": "sale",
            "property_type": "apartment",
            "bedrooms": 4,
            "bathrooms": 3,
            "area_sqm": "250.00",
            "area_sqft": "2690.00",
            "year_built": 2020,
            "floors": 1,
            "parking_spaces": 2,
            "is_featured": true,
            "status": "available",
            "views_count": 150,
            "favorites_count": 25,
            "rating": "4.80",
            "owner": {
                "id": 7,
                "name": "Haley King",
                "email": "agent3@vestanest.com",
                "phone": "+233123456789"
            },
            "agent": {
                "id": 9,
                "name": "Taryn Wisoky",
                "email": "agent5@vestanest.com",
                "phone": "+233987654321"
            },
            "amenities": [
                {
                    "id": 4,
                    "name": "Balcony",
                    "description": "Private balcony with outdoor space"
                }
            ],
            "reviews": [
                {
                    "id": 1,
                    "rating": 5,
                    "comment": "Amazing property!",
                    "user": {
                        "id": 1,
                        "name": "John Doe"
                    },
                    "created_at": "2025-09-18T23:47:33.000000Z"
                }
            ],
            "created_at": "2025-09-18T23:47:33.000000Z",
            "updated_at": "2025-09-18T23:47:33.000000Z"
        }
    }
}
```

### 3. Get Featured Properties
**Endpoint:** `GET /properties/featured`

**Description:** Retrieve featured properties for homepage display.

**Query Parameters:**
- `limit` (optional): Number of properties to return (default: 6, max: 20)

**Response:**
```json
{
    "success": true,
    "data": {
        "properties": [
            {
                "id": 1,
                "title": "Luxury Penthouse in Accra",
                "description": "Stunning penthouse with panoramic city views",
                "image": "properties/luxury-penthouse-accra.jpg",
                "images": ["properties/luxury-penthouse-accra-1.jpg", "..."],
                "location": "Airport Residential Area, Accra",
                "city": "Accra",
                "region": "Greater Accra",
                "price": "2500000.00",
                "formatted_price": "GH¢ 2,500,000.00",
                "price_type": "sale",
                "property_type": "apartment",
                "bedrooms": 4,
                "bathrooms": 3,
                "area_sqm": "250.00",
                "is_featured": true,
                "status": "available",
                "views_count": 150,
                "rating": "4.80",
                "agent": {
                    "id": 9,
                    "name": "Taryn Wisoky"
                },
                "amenities": [
                    {
                        "id": 4,
                        "name": "Balcony"
                    }
                ],
                "created_at": "2025-09-18T23:47:33.000000Z"
            }
        ]
    }
}
```

## Property Amenities Endpoints

### 4. Get All Amenities
**Endpoint:** `GET /amenities`

**Description:** Retrieve all property amenities with search functionality.

**Query Parameters:**
- `search` (optional): Search in amenity name or description
- `per_page` (optional): Items per page (default: 50, max: 100)

**Response:**
```json
{
    "success": true,
    "data": {
        "amenities": [
            {
                "id": 1,
                "name": "Air Conditioning",
                "description": "Central air conditioning system",
                "properties_count": 5,
                "created_at": "2025-09-18T23:47:33.000000Z",
                "updated_at": "2025-09-18T23:47:33.000000Z"
            }
        ],
        "pagination": {
            "current_page": 1,
            "last_page": 2,
            "per_page": 50,
            "total": 80,
            "from": 1,
            "to": 50
        }
    }
}
```

### 5. Get Single Amenity
**Endpoint:** `GET /amenities/{id}`

**Description:** Retrieve detailed information about a specific amenity including properties that have it.

**Response:**
```json
{
    "success": true,
    "data": {
        "amenity": {
            "id": 1,
            "name": "Air Conditioning",
            "description": "Central air conditioning system",
            "properties_count": 5,
            "properties": [
                {
                    "id": 1,
                    "title": "Luxury Penthouse in Accra",
                    "location": "Airport Residential Area, Accra",
                    "city": "Accra",
                    "price": "2500000.00",
                    "formatted_price": "GH¢ 2,500,000.00",
                    "property_type": "apartment",
                    "price_type": "sale",
                    "status": "available"
                }
            ],
            "created_at": "2025-09-18T23:47:33.000000Z",
            "updated_at": "2025-09-18T23:47:33.000000Z"
        }
    }
}
```

### 6. Get Popular Amenities
**Endpoint:** `GET /amenities/popular`

**Description:** Retrieve the most popular amenities (most used by properties).

**Query Parameters:**
- `limit` (optional): Number of amenities to return (default: 10, max: 50)

**Response:**
```json
{
    "success": true,
    "data": {
        "amenities": [
            {
                "id": 4,
                "name": "Balcony",
                "description": "Private balcony with outdoor space",
                "properties_count": 7
            }
        ]
    }
}
```

### 7. Get Amenities by Categories
**Endpoint:** `GET /amenities/categories`

**Description:** Retrieve amenities grouped by categories (currently returns all amenities as a single category).

**Response:**
```json
{
    "success": true,
    "data": {
        "categories": [
            {
                "name": "All Amenities",
                "amenities": [
                    {
                        "id": 1,
                        "name": "Air Conditioning",
                        "description": "Central air conditioning system",
                        "properties_count": 5
                    }
                ]
            }
        ]
    }
}
```

## Property Views Endpoints

### 8. Record Property View
**Endpoint:** `POST /property-views`

**Description:** Record a property view (for analytics and tracking).

**Request Body:**
```json
{
    "property_id": 1,
    "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
}
```

**Response:**
```json
{
    "success": true,
    "message": "Property view recorded successfully",
    "data": {
        "view": {
            "id": 416,
            "property_id": 1,
            "user_id": null,
            "viewed_at": "2025-09-19T01:16:11.000000Z",
            "is_duplicate": false
        },
        "property": {
            "id": 1,
            "title": "Luxury Penthouse in Accra",
            "views_count": 151
        }
    }
}
```

### 9. Get Property Views for Specific Property
**Endpoint:** `GET /property-views/property/{propertyId}`

**Description:** Retrieve views for a specific property.

**Query Parameters:**
- `start_date` (optional): Start date for filtering
- `end_date` (optional): End date for filtering
- `per_page` (optional): Items per page (default: 20)

**Response:**
```json
{
    "success": true,
    "data": {
        "views": [
            {
                "id": 416,
                "property_id": 1,
                "user": {
                    "id": 1,
                    "name": "John Doe"
                },
                "ip_address": "127.0.0.1",
                "viewed_at": "2025-09-19T01:16:11.000000Z"
            }
        ],
        "pagination": {
            "current_page": 1,
            "last_page": 1,
            "per_page": 20,
            "total": 1,
            "from": 1,
            "to": 1
        }
    }
}
```

### 10. Get User's Property Views (Protected)
**Endpoint:** `GET /property-views/my-views`

**Description:** Retrieve the authenticated user's property view history.

**Headers:**
```
Authorization: Bearer {token}
```

**Query Parameters:**
- `start_date` (optional): Start date for filtering
- `end_date` (optional): End date for filtering
- `per_page` (optional): Items per page (default: 20)

**Response:**
```json
{
    "success": true,
    "data": {
        "views": [
            {
                "id": 416,
                "property": {
                    "id": 1,
                    "title": "Luxury Penthouse in Accra",
                    "location": "Airport Residential Area, Accra",
                    "city": "Accra",
                    "price": "2500000.00",
                    "formatted_price": "GH¢ 2,500,000.00",
                    "property_type": "apartment",
                    "price_type": "sale",
                    "image": "properties/luxury-penthouse-accra.jpg",
                    "status": "available"
                },
                "viewed_at": "2025-09-19T01:16:11.000000Z"
            }
        ],
        "pagination": {
            "current_page": 1,
            "last_page": 1,
            "per_page": 20,
            "total": 1,
            "from": 1,
            "to": 1
        }
    }
}
```

### 11. Get Property Views Statistics
**Endpoint:** `GET /property-views/statistics`

**Description:** Retrieve property views statistics and analytics.

**Query Parameters:**
- `property_id` (optional): Filter by specific property
- `start_date` (optional): Start date for filtering
- `end_date` (optional): End date for filtering

**Response:**
```json
{
    "success": true,
    "data": {
        "statistics": {
            "total_views": 1500,
            "unique_users": 250,
            "unique_ips": 300,
            "views_today": 45,
            "views_this_week": 320,
            "views_this_month": 1200,
            "most_viewed_properties": [
                {
                    "property_id": 1,
                    "property_title": "Luxury Penthouse in Accra",
                    "property_location": "Airport Residential Area, Accra",
                    "views_count": 150
                }
            ]
        }
    }
}
```

## Error Responses

### Validation Errors (422)
```json
{
    "success": false,
    "message": "Validation failed",
    "errors": {
        "property_id": ["The property id field is required."],
        "min_price": ["The min price must be at least 0."]
    }
}
```

### Not Found Errors (404)
```json
{
    "success": false,
    "message": "Property not found"
}
```

### Authentication Errors (401)
```json
{
    "success": false,
    "message": "Authentication required"
}
```

## Features

### Advanced Filtering
- **Search**: Full-text search across title, description, location, and city
- **Property Type**: Filter by apartment, house, condo, villa, townhouse, studio, commercial, land
- **Price Range**: Filter by minimum and maximum price
- **Location**: Filter by location, city, or region
- **Amenities**: Filter by multiple amenities
- **Status**: Filter by availability status
- **Featured**: Filter featured properties

### Sorting Options
- **Price**: Ascending or descending
- **Date**: Newest or oldest first
- **Popularity**: By views count
- **Rating**: By property rating

### Analytics & Tracking
- **Property Views**: Track property views with IP and user agent
- **Duplicate Prevention**: Prevents duplicate views within 1 hour
- **User Tracking**: Links views to authenticated users
- **Statistics**: Comprehensive analytics and reporting

### Data Transformation
- **Formatted Prices**: Human-readable price formatting
- **Related Data**: Includes owner, agent, amenities, and reviews
- **Pagination**: Efficient pagination with metadata
- **Filter Tracking**: Returns applied filters for UI state management

## Usage Examples

### Search for Apartments for Sale
```
GET /api/v1/properties?property_type=apartment&price_type=sale&sort_by=price_asc
```

### Find Properties with Specific Amenities
```
GET /api/v1/properties?amenities[]=1&amenities[]=4&amenities[]=22
```

### Get Featured Properties for Homepage
```
GET /api/v1/properties/featured?limit=6
```

### Record a Property View
```
POST /api/v1/property-views
{
    "property_id": 1,
    "user_agent": "Mozilla/5.0..."
}
```

### Get User's View History
```
GET /api/v1/property-views/my-views
Authorization: Bearer {token}
```

This comprehensive API provides all the functionality needed for a modern real estate platform, including advanced search, filtering, analytics, and user tracking capabilities.

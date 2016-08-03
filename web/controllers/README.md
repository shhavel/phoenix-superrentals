# API Documentation

* [Superrentals.RentalController](#superrentalsrentalcontroller)
  * [create](#superrentalsrentalcontrollercreate)
  * [delete](#superrentalsrentalcontrollerdelete)
  * [index](#superrentalsrentalcontrollerindex)
  * [show](#superrentalsrentalcontrollershow)
  * [update](#superrentalsrentalcontrollerupdate)

## Superrentals.RentalController
### Superrentals.RentalController.create
#### does not create resource and renders errors when data is invalid
##### Request
* __Method:__ POST
* __Path:__ /api/rentals
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: q53heh1fq657g45a3d74inl2gd8p86ia
```
* __Response body:__
```json
{
  "errors": {
    "title": [
      "can't be blank"
    ],
    "owner": [
      "can't be blank"
    ],
    "image": [
      "can't be blank"
    ],
    "city": [
      "can't be blank"
    ],
    "category": [
      "can't be blank"
    ],
    "bedrooms": [
      "can't be blank"
    ]
  }
}
```

#### creates and renders resource when data is valid
##### Request
* __Method:__ POST
* __Path:__ /api/rentals
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 2j1v9cbakeaehfu66057iolv0792m16b
location: /api/rentals/60
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "rental",
    "id": "60",
    "attributes": {
      "title": "some content",
      "owner": "some content",
      "image": "some content",
      "city": "some content",
      "category": "some content",
      "bedrooms": 42
    }
  }
}
```

### Superrentals.RentalController.delete
#### deletes chosen resource
##### Request
* __Method:__ DELETE
* __Path:__ /api/rentals/58
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: nn6eo9dic678i8ejkutggn3cv04a5i2c
content-type: application/vnd.api+json
```
* __Response body:__
```json

```

### Superrentals.RentalController.index
#### lists all entries on index
##### Request
* __Method:__ GET
* __Path:__ /api/rentals
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 3d0o9gt11a5s403nhual1vrnj059om9o
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": []
}
```

### Superrentals.RentalController.show
#### shows chosen resource
##### Request
* __Method:__ GET
* __Path:__ /api/rentals/61
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: ob6ollkq11enqkpgv4vjri5fg05hqavl
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "rental",
    "id": "61",
    "attributes": {
      "title": null,
      "owner": null,
      "image": null,
      "city": null,
      "category": null,
      "bedrooms": null
    }
  }
}
```

### Superrentals.RentalController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/rentals/57
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 70rdm9megc120c2el3hd359a51sekthj
```
* __Response body:__
```json
{
  "errors": {
    "title": [
      "can't be blank"
    ],
    "owner": [
      "can't be blank"
    ],
    "image": [
      "can't be blank"
    ],
    "city": [
      "can't be blank"
    ],
    "category": [
      "can't be blank"
    ],
    "bedrooms": [
      "can't be blank"
    ]
  }
}
```

#### updates and renders chosen resource when data is valid
##### Request
* __Method:__ PUT
* __Path:__ /api/rentals/59
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: eu48uctag91f9lthbvf586sd16b192tj
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "rental",
    "id": "59",
    "attributes": {
      "title": "some content",
      "owner": "some content",
      "image": "some content",
      "city": "some content",
      "category": "some content",
      "bedrooms": 42
    }
  }
}
```


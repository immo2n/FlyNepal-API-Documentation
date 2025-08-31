### Pattern of response
Unless informed all the api end point will response in a common pattern. Otherwise please check the
specific documentation for the endpoint.

### Sample of response structure
```
{
    "success": bool - true/false,
    "code": string - CONSTANT_STRING_TO_MAP,
    "data": object - [] with specific data that is expected
}
```

### You can make a common dto/mapper for the front end for these endpoints
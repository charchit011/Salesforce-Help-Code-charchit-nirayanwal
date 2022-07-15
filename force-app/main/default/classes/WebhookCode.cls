// To make this webhook publicly accesseble create a site in SF 
// Make this class publicly accesseble for guest user 
// Hit the url with the endpoint '/webhookurl'
// Developed BY - Charchit Nirayanwal


@RestResource(urlMapping='/webhookurl')
global class WebhookCode {
    @HttpPost
    global static string handledata(){
        
        RestRequest request=RestContext.request;
        //Parse the data coming in body section.
        
        {WrapperClassName} Obj =new {WrapperClassName}();
        Obj={WrapperClassName}.parse(string.valueof(request.requestBody.toString()));
        
        //Perform Some Operation using that data 


        //
        //Return Either a Json(in form of string)
        return '{JsonName}'
    }
}
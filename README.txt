
DIETS

Gets all the available diet plans (i.e. bulking, cutting, maintainence)

Parameters: 
1. dietPlan (name of diet plan)
2. dietCompositionId (id of the diet composition of a diet plan) 

Route: /dailyDiet/diets 
(POST working) 
(GET working) 

Gets specific diet plan 
Route: /dailyDiet/diets/:dietPlan  
(GET working) 


Gets all the diet composition for a specific dietPlan
Route: /dailyDiet/diets/:dietPlan/dietComposition
(GET working)
(POST working)

Gets the specific diet composition for a specific dietPlan 
Route: /dailyDiet/diets/:dietPlan/dietComposition/:dietCompositionid
(GET WORKING)
(Put need check)


FOOD CHOICES

Route: /dailyDiet/food
(GET, POST , PUT , Delete working) 


HEALTHDISEASE router

Parameters: 
1. diseaseName (the actual name of disease, ie. Hypertension) 
2. suggestionId
3. measureId


Returns all the diseases that is stored in our system
Route: /healthDisease
(GET, POST working) 


Returns a specific disease stored in system
Route: /healthDisease/:diseaseName
(GET, PUT) working

Returns all the suggestion for a specific disease stored
Route: healthDisease/:diseaseName/suggestion
(Get,POST) working 

Returns a specific suggestion for a disease
Route: healthDisease/:diseaseName/suggestion/:suggestionId
(Get, PUT) working

Returns the measure for a specific disease 
Route: healthDisease/:diseaseName/measures
(Get, POST working) 

Returns a specific measure for a disease
Route: healthDisease/:diseaseName/measures/measureId
(Get, Put working) 




UserAccounts: 

Get the userID + 
/users 


UserProfile: 

Returns all the user profiles
/userProfile 

Return a specific user account (based on id, that has to be retrieved) 
/userProfile/:userId
(for testing purpose use userId: 604fd4b12630973608ce2e36) 





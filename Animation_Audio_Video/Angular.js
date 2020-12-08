angular.module("MyApp",[])
.controller("MyCtrl",function($scope)
{
    var ServicesDetails=[
        {
            "Name":"Keyur",
            "Age":22,
            "phone":7878887722,
            "Category":"Electrician"
        },
        {
            "Name":"Rajesh",
            "Age":22,
            "phone":7878887785,
            "Category":"Electrician"
        },
        {
            "Name":"Mayur",
            "Age":22,
            "phone":9898882200,
            "Category":"Carpenter"
        },
        {
            "Name":"Ramesh",
            "Age":22,
            "phone":9898882210,
            "Category":"Carpenter"
        },
        {
            "Name":"Nainesh",
            "Age":22,
            "phone":9898988824,
            "Category":"Plumber"
        },
        {
            "Name":"Anand",
            "Age":22,
            "phone":9898988844,
            "Category":"Plumber"
        }

    ];
    console.log(ServicesDetails);
    $scope.ServicesDetails=ServicesDetails;
    $scope.rowlimit=6;

    $scope.save=function()
    {
       var index=$scope.index;
        $scope.ServicesDetails[index].Name=$scope.Name;
        $scope.ServicesDetails[index].Age=$scope.Age;
        $scope.ServicesDetails[index].phone=$scope.phone;
        $scope.ServicesDetails[index].Category=$scope.Category;
    }
    $scope.add=function()
    {
        
        $scope.ServicesDetails.push({
            id:$scope.id,Name:$scope.Name,Age:$scope.Age,phone:$scope.phone,Category:$scope.Category
        });
    }
    // function getindex(id)
    // {
    //     for(var i=0;i<$scope.ServicesDetails.length;i++)
    //     if($scope.ServicesDetails[i].Name==id)
    //     return i;
    //     return -1;
    // }
    $scope.edit=function()
    {
        var index=this.$index;
        var Service=$scope.ServicesDetails[index];
        $scope.index=index;
        $scope.id=Service.id;
        $scope.Name=Service.Name;
        $scope.Age=Service.Age;
        $scope.phone=Service.phone;
        $scope.Category=Service.Category;
    }
    $scope.delete=function()
    {
        var result=confirm('Are you sure?');
        if(result==true)
        {
            var index=this.$index;
            $scope.ServicesDetails.splice(index,1);
        }
    };
})
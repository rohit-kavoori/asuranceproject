<div class="container" style="margin-top: 110px">
  <h2 id="heading">Let's Start</h2>
  <form name="startPage" ng-controller="startPageCtrl" novalidate method="post">
  	 <span
								class="text-error"
								ng-show="startPage.submitted && startPage.$invalid"
								ng-style="errorField2">* Required Fields</span>
								<br><br>
    <div class=" form-group row ">
      <div class="col-sm-4  has-feedback has-feedback-left"><input type="text" class="form-control" ng-model="model.firstName" name="firstName" placeholder="First Name" required /><span class="text-error" ng-show="startPage.submitted && startPage.firstName.$invalid" ng-style="errorField">*</span><i class="form-control-feedback glyphicon glyphicon-user"></i>  </div>
      <div class="col-sm-2"><input type="text" class="form-control" name="middleName" placeholder="MI" style="width:80px"></div>
      <div class="col-sm-4"><input type="text" class="form-control" ng-model="model.lastName" name="lastName" placeholder="Last Name" required /><span class="text-error" ng-show="startPage.submitted && startPage.lastName.$invalid" ng-style="errorField">*</span></div>
      <div class="col-sm-2 ">
        <select class="form-control" name="suffix" style="border-radius: 4px;border: solid 3px #cbc9c9;background-color: #fcf8e3">
          <option value="" selected>Suffix</option>
          <option value="Jr">Jr</option>
          <option value="Sr">Sr</option>
        </select></div>
      </div>
      <div class="form-group row">
        <div class="col-sm-4 has-feedback "><input type="text" class="form-control" ng-model="model.address1" name="address1" placeholder="Mailing Address" required /><span class="text-error" ng-show="startPage.submitted && startPage.address1.$invalid" ng-style="errorField">*</span><i class="form-control-feedback glyphicon glyphicon-home"></i></div>
        <div class="col-sm-3 "><input type="text" class="form-control" name="apt" placeholder="Apt./Unit #"/></div>
      </div>
      <div class="form-group row">
        <div class="col-sm-4 "><input type="text" class="form-control"  ng-model="model.address2" name="address2" placeholder="City" required /><span class="text-error" ng-show="startPage.submitted && startPage.address2.$invalid" ng-style="errorField">*</span></div>
        <div class="col-sm-2 " ng-controller="stateController">
          <select class="form-control"   ng-model="model.address3" name="address3" id="state" style="border-radius: 4px;border: solid 3px #cbc9c9;background-color: #fcf8e3"  ng-model = "selectedState" ng-options = "state.name for state in addState"  ng-init="selectedState = options[0].name" required >
            
            <option value="">Select State</option>
            </select><span class="text-error" ng-show="startPage.submitted && startPage.address3.$invalid" ng-style="errorField">*</span>
          </div>
          <div class="col-sm-2 "><input type="text" class="form-control"  ng-model="model.address4" name="address4" placeholder="Zip" style="width:180px" required /><span class="text-error" ng-show="startPage.submitted && startPage.address4.$invalid" ng-style="errorField">*</span></div>
        </div>
        <div class="form-group row">
         <!--  <div class="col-sm-2 "> <label for="dob" style="margin-top:10px">Date of Birth</label></div> -->
          <div class="col-sm-3 "><input type="date" class="form-control" ng-model="model.dob" name="dob" required /><span class="text-error" ng-show="startPage.submitted && startPage.dob.$invalid" ng-style="errorField">*</span></div>
        </div>
        <div class="form-group row">
          <div class="col-sm-12 text-center"><input type="submit" class="btn btn-primary btn-lg" value="Okay, start my quote" ng-click="save(model)"></div>
          
        </div>
        <div class="form-group row">
          <div class="col-sm-12"><a href="#"><p class="text-center">No, Thanks</p></a></div>
          
        </div>
      </form>
    </div>
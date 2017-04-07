require "./spec_helper"

describe Railslike do
	it "parses array values in request body" do
		request = HTTP::Request.new(
			"POST",
			"/",
			body: "framework=kemal&feats[]=fast&feats[]=effective&feats[]=simple",
			headers: HTTP::Headers{"Content-Type" => "application/x-www-form-urlencoded"},
		)

		body_params = Kemal::ParamParser.new(request).body
		body_params["framework"].should eq("kemal")
		body_params["feats[]"].should eq(["fast", "effective", "simple"])
	end
end

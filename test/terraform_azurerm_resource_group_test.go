package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformAzurermResourceGroupTest(t *testing.T) {
	// Construct the terraform options with default retryable errors to handle the most common
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// Set the path to the Terraform code that will be tested.
		TerraformDir: "../",
		Vars: map[string]interface{}{
			"name": "example",
			"env":  "hml",
		},
	})

	// Run "terraform init" and "terraform Plan". Fail the test if there are any errors.
	terraform.InitAndPlan(t, terraformOptions)

	// Run `terraform output` to get the values of output variables and check they have the expected values.
	output := terraform.Output(t, terraformOptions, "resource_group_name")

	assert.Equal(t, "example-hml-rg", output)
}

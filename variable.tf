variable "name" {
    description= "Name of the canary which is going to be sent as part of the notification when the canary fails and the alarm triggers."
    type = string
}

variable "runtime_version" {
    description= "Runtime version of the canary. Details: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_nodejs_puppeteer.html"
    type = string
    default = "syn-nodejs-puppeteer-7.0"

    validation {
        condition     = contains(["syn-nodejs-puppeteer-7.0", "syn-nodejs-puppeteer-6.2"], var.runtime_version)
        error_message = "Valid values for runtime versions are: syn-nodejs-puppeteer-7.0, syn-nodejs-puppeteer-6.2"
    }
}

variable "take_screenshot" {
    description= "If screenshot should be taken"
    type = bool
    default = false
}

variable "api_hostname" {
    description= "The host name of the API, ex: mydomain.internal."
    type = string
}

variable "api_path" {
    description= "The path for the API call , ex: /path?param=value."
    type = string
}

variable "vpc_id" {
    description= "The vpc used by the lambda executing the code of the canary."
    type = string
}

variable "subnet_ids" {
    description= "The subnet ids used by the lambda executing the code of the canary."
    type = list(string)
}

variable "frequency" {
    description= "The frequency in minutes at which the canary should be run. The minimum is two minutes."
    type = string
}

variable "alert_sns_topic" {
    description= "The SNS topic to which the cloud watch alarm notification is sent."
    type = string
}
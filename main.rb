require 'aws-sdk-medialive'
require 'jsonnet'
require 'logger'

logger = Logger.new(STDOUT)
media_live_client = Aws::MediaLive::Client.new(logger: logger)

create_input_security_group_body = Jsonnet.load('input_security_group.jsonnet')
create_input_security_group_request = Aws::MediaLive::Types::CreateInputSecurityGroupRequest.new(create_input_security_group_body)
input_security_group = media_live_client.create_input_security_group(create_input_security_group_request)

logger.info(input_security_group)

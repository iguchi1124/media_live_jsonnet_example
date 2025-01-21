require 'jsonnet'
require 'securerandom'

vm = Jsonnet::VM.new
vm.ext_var("uuid", SecureRandom.uuid)
print vm.evaluate_file('test.jsonnet')

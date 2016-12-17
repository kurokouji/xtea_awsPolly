# encoding: utf-8
ENV["SSL_CERT_FILE"] = "./cacert.pem"
ENV["AWS_ACCESS_KEY_ID"] = "アクセスキー"
ENV["AWS_SECRET_ACCESS_KEY"] = "シークレットキー"
ENV["AWS_DEFAULT_REGION"] = "us-east-1"
ENV["AWS_DEFAULT_OUTPUT"] = "json"

require 'aws-sdk'

filename = 'demo.mp3'
textdata = 'こんにちは'

filename = ARGV[0]
textdata = File.read('data.txt', :encoding => Encoding::UTF_8)

polly = Aws::Polly::Client.new

polly.synthesize_speech(
    response_target: './sound/' + filename,
    output_format: 'mp3',
    text: textdata,
    text_type: 'text',
    voice_id: 'Mizuki'
)
exit(0);

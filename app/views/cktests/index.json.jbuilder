json.array!(@cktests) do |cktest|
  json.extract! cktest, :content
  json.url cktest_url(cktest, format: :json)
end

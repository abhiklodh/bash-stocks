import requests

params = {
    'access_key': '00216d2d64b834a9938bd3bf0829d2a7'
}

api_result = requests.get('http://api.marketstack.com/v1/tickers/aapl/eod', params)

api_response = api_result.json()

for row in api_response['data']['eod']:
    print(row)

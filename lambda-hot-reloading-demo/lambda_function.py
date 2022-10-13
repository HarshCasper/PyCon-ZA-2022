import math

ACTIONS = {
    'square': lambda x: x * x,
    'square root': lambda x: math.sqrt(x),
    'increment': lambda x: x + 1,
    'decrement': lambda x: x - 1,
}

def lambda_handler(event, context):
    result = ACTIONS[event['action']](event['number'])
    response = {'result': result}
    return response

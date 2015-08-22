words = {
    'north': 'direction',
    'south': 'direction',
    'east': 'direction',
    'west': 'direction',
    'down': 'direction',
    'up': 'direction',
    'left': 'direction',
    'right': 'direction',
    'back': 'direction',

    'go': 'verb',
    'stop': 'verb',
    'kill': 'verb',
    'eat': 'verb',

    'the': 'stop',
    'in': 'stop',
    'of': 'stop',
    'from': 'stop',
    'at': 'stop',
    'it': 'stop',

    'door': 'noun',
    'bear': 'noun',
    'princess': 'noun',
    'cabinet': 'noun'
}

def scan(sentence):
    pairs = []
    for word in sentence.split():
        try:
            pairs.append(('number', str(int(word))))
        except ValueError:
            category = words.get(word, None)
            if not category:
                pairs.append(('error', word))
            else:
                pairs.append((category, word))
    return pairs

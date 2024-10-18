import pandas as pd

#Temporal:
df = pd.read_csv(filepath_or_buffer='practica2/Airline_review_train.csv', sep=';', encoding='latin1')


def rm_main(input0):
    df = input0

    # Modificar a numerico los valores booleanos nominales:
    df['Verified'] = df['Verified'].replace('VERDADERO',1)
    df['Verified'] = df['Verified'].replace('FALSO',0)

    df['Recommended'] = df['Recommended'].replace('yes',1,)
    df['Recommended'] = df['Recommended'].replace('no',0)

    return df 

#Temporal
print(rm_main(df)['Verified'])
print(rm_main(df)['Recommended'])
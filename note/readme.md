实现方法：

1)I write code from scratch. --pass
2)Use an existing package
2.1）requests
Test script -> function -> loop
# But have BUG togo
``` python
import requests
def load_img(imgurl, file):
    '''Download a single image to the specified folder'''
    name = imgurl.split('/')[-1]
    file = "{}\\{}".format(file,name)
    item = requests.get(imgurl).content
    with open(file,'wb') as f:
        f.write(item)
    print('{} is loaded'.format(name))

load_img('http://10pm.com/files/lk9wdklq6dz.jpg','E:\\……')
```
2.2) you-get(we use)
The win batch command replaces the loop.
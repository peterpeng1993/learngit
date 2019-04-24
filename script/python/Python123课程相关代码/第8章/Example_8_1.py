# Example_8_1.py
def getHTMLlines(htmlpath):
    f = open(htmlpath, "r", encoding='utf-8')
    ls = f.readlines()
    f.close()
    return ls

def extractImageUrls(htmllist):
    urls = []
    for line in htmllist:
        if 'img' in line:
            url = line.split('src=')[-1].split('"')[1]
            if 'http' in url:
                urls.append(url)
    return urls
    
def showResults(urls):
    count = 0
    for url in urls:
        print('第{:2}个URL:{}'.format(count, url))
        count += 1
    
def saveResults(filepath, urls):
    f = open(filepath, "w")
    for url in urls:
        f.write(url+"\n")
    f.close()
    
def main():
    inputfile  = 'nationalgeographic.html'
    outputfile = 'nationalgeographic-urls.txt'
    htmlLines = getHTMLlines(inputfile)
    imageUrls = extractImageUrls(htmlLines)
    showResults(imageUrls)
    saveResults(outputfile, imageUrls)

main()

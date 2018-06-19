import os
import math
import future
import strutils
import strformat
import httpclient

import arraymancer

proc read_label_file(path: string) =
  return

proc read_image_file(path: string) =
  return

type
  Mnist = ref object of RootObj
    rootdir*: string
    
proc download(mnist: Mnist) =
  var
    urls = ["http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz",
            "http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz",
            "http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz",
            "http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz"]
    client = newHttpClient()
  createDir(mnist.rootdir)
  for link in urls:
    var pre_filename = link.split('/')
    var filename = pre_filename[pre_filename.len - 1]
    if existsFile(fmt"{mnist.rootdir}/{filename}"):
      echo fmt"{mnist.rootdir}/{filename} is already downloaded."      
    else:
      downloadFile(link, fmt"{mnist.rootdir}/{filename}")

proc preprocceses(mnist: Mnist) =
  return
  
    
if isMainModule :
  var m = Mnist(rootdir: "raw_data")
  m.download()
proc read_label_file(path: string) =
  return

proc read_image_file(path: string) =
  return

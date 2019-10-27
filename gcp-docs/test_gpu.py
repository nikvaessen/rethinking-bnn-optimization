import tensorflow as tf

# tf 1.14
try:
    with tf.Session() as sess:
        devices = sess.list_devices()
        print(devices)
except:
    print("not running tf 1.14")

# tf 2

try:
    res = tf.test.is_gpu_available()
    print(res)
except:
    print("not running tf 2.0")

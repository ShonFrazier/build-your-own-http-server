
print("Logs from your program will appear here!")

// Uncomment this block to pass the first stage
// import Foundation

// class TCPServer {
//   let port: Int
//   var inputStream: InputStream?
//   var outputStream: OutputStream?

//   init(port: Int) {
//     self.port = port
//   }

//   func start() {
//     var readStream: Unmanaged<CFReadStream>?
//     var writeStream: Unmanaged<CFWriteStream>?

//     CFStreamCreatePairWithSocketToHost(nil, "localhost" as CFString, UInt32(port), &readStream, &writeStream)

//     inputStream = readStream?.takeRetainedValue()
//     outputStream = writeStream?.takeRetainedValue()

//     inputStream?.open()
//     outputStream?.open()

//     // Handle incoming data and send responses
//     // Implement your logic here

//     print("Server started on port \(port)")
//   }

//   func stop() {
//     inputStream?.close()
//     outputStream?.close()
//     print("Server stopped")
//   }
// }

// let server = TCPServer(port: 8080)
// server.start()

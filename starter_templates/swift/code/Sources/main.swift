import NIOCore
import NIOPosix

// You can use print statements as follows for debugging, they'll be visible when running tests.
print("Logs from your program will appear here!")

// Uncomment this block to pass the first stage
// // First argument is the program path
// var arguments = CommandLine.arguments.dropFirst(0)  // just to get an ArraySlice<String> from [String]
// var allowHalfClosure = true
// if arguments.dropFirst().first == .some("--disable-half-closure") {
//     allowHalfClosure = false
//     arguments = arguments.dropFirst()
// }
// let arg1 = arguments.dropFirst().first
// let arg2 = arguments.dropFirst(2).first
// let arg3 = arguments.dropFirst(3).first

// let defaultHost = "::1"
// let defaultPort = 4221
// let defaultHtdocs = "/dev/null/"

// enum BindTo {
//     case ip(host: String, port: Int)
//     case unixDomainSocket(path: String)
//     case stdio
// }

// let htdocs: String
// let bindTarget: BindTo

// switch (arg1, arg1.flatMap(Int.init), arg2, arg2.flatMap(Int.init), arg3) {
// case (.some(let h), _, _, .some(let p), let maybeHtdocs):
//     // second arg an integer --> host port [htdocs]
//     bindTarget = .ip(host: h, port: p)
//     htdocs = maybeHtdocs ?? defaultHtdocs
// case (_, .some(let p), let maybeHtdocs, _, _):
//     // first arg an integer --> port [htdocs]
//     bindTarget = .ip(host: defaultHost, port: p)
//     htdocs = maybeHtdocs ?? defaultHtdocs
// case (.some(let portString), .none, let maybeHtdocs, .none, .none):
//     // couldn't parse as number --> uds-path-or-stdio [htdocs]
//     if portString == "-" {
//         bindTarget = .stdio
//     } else {
//         bindTarget = .unixDomainSocket(path: portString)
//     }
//     htdocs = maybeHtdocs ?? defaultHtdocs
// default:
//     htdocs = defaultHtdocs
//     bindTarget = BindTo.ip(host: defaultHost, port: defaultPort)
// }

// let fileIO = NonBlockingFileIO(threadPool: .singleton)
// let socketBootstrap = ServerBootstrap(group: MultiThreadedEventLoopGroup.singleton)
//     // Specify backlog and enable SO_REUSEADDR for the server itself
//     .serverChannelOption(ChannelOptions.backlog, value: 256)
//     .serverChannelOption(ChannelOptions.socketOption(.so_reuseaddr), value: 1)

//     // Enable SO_REUSEADDR for the accepted Channels
//     .childChannelOption(ChannelOptions.socketOption(.so_reuseaddr), value: 1)
//     .childChannelOption(ChannelOptions.maxMessagesPerRead, value: 1)
//     .childChannelOption(ChannelOptions.allowRemoteHalfClosure, value: allowHalfClosure)
// let pipeBootstrap = NIOPipeBootstrap(group: MultiThreadedEventLoopGroup.singleton)
//     .channelOption(ChannelOptions.maxMessagesPerRead, value: 1)
//     .channelOption(ChannelOptions.allowRemoteHalfClosure, value: allowHalfClosure)

// let channel = try { () -> Channel in
//     switch bindTarget {
//     case .ip(let host, let port):
//         return try socketBootstrap.bind(host: host, port: port).wait()
//     case .unixDomainSocket(let path):
//         return try socketBootstrap.bind(unixDomainSocketPath: path).wait()
//     case .stdio:
//         return try pipeBootstrap.takingOwnershipOfDescriptors(input: STDIN_FILENO, output: STDOUT_FILENO).wait()
//     }
// }()

// let localAddress: String
// if case .stdio = bindTarget {
//     localAddress = "STDIO"
// } else {
//     guard let channelLocalAddress = channel.localAddress else {
//         fatalError(
//             "Address was unable to bind. Please check that the socket was not closed or that the address family was understood."
//         )
//     }
//     localAddress = "\(channelLocalAddress)"
// }
// print("Server started and listening on \(localAddress), htdocs path \(htdocs)")

// // This will never unblock as we don't close the ServerChannel
// try channel.closeFuture.wait()

// print("Server closed")

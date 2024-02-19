use std::env;
use std::process::Command;


fn main() {
    let args: Vec<String> = env::args().collect();
    
    let _url = &args[1];
    let tinyurl = "http://tinyurl.com/api-create.php?url=";
//    println!("{tinyurl} {_url}");

//    let inputurl = tinyurl.to_owned() + _url;
//    let inputurl = "{tinyurl}{_url}";
    let inputurl = format!("{}{}", tinyurl, _url);
//    println!("{inputurl}");

    let _output = Command::new("curl")
        .arg("-s")
        .arg(&inputurl)
        .status()
        .expect("You failed, loser!");

}

/*:
# Module Project - NOC List

Greetings agent. Your mission is a top priority for the agency. Please read below for further info.

Our undercover agents in Eastern Europe are in trouble. The NOC list (Non-official cover) has been leaked and we need our directors to have quick access to the information so we can try to mitigate the damage. Some of the agents on the list have an access level that makes them privy to very sensitive information. We need an application that will present the NOC list's information in a quickly digestible format. Our top agents have been working on it, but we need this done ASAP and you've proven yourself to be quite capable of a quick turnaround.

The Director herself has given you access to all the agency's resources to complete this mission. We're counting on you agent.

Here is the complete NOC List. This information is classified at the highest levels, so guard it very carefully.

 ---
 
 * coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false
 * coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true
 * coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
 * coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
 * coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
 * coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
 * coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
 * coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
 * coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
 * coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
 * coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false
 
 ---

This message will self destruct in 5 seconds.
*/
//: ## Step 1
//: Create constants for each of the above agents and store all their information in a tuple.
let ethan: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false)
let jim: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true)
let claire: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
let eugene: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
let franz: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
let luther: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
let sarah: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
let max: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
let hannah: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
let jack: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
let frank: (coverName: String, realName: String, accessLevel: Int, compromised: Bool) = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)


//: ## Step 2
//: Place the above constants inside an array. Declare this array as a constant as well.
let agents = [ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank]
//: ## Step 3
//: Create a function that calculates the total number of compromised agents. Inside the function, iterate over the array of agents to determine which ones are compromised. Return the total count.
func compromisedAgents(agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)]) -> Int {
    var total = 0
    for agent in agents {
        if agent.compromised {
            total += 1
        }
    }
    return total
}
//: ## Step 4
//: Call the above function to find the total number of compromised agents and then print a sentence that says "# agents have been compromised!" using string interpolation.
let compromised = compromisedAgents(agents: agents)

print("\(compromised) agents have been compromised!")
//: ## Step 5
//: Create a function called "findCleanAgents" that both prints the cover names of all uncompromised agents, as well as returns an array of agents that are uncompromised.
func findCleanAgents(agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)]) -> [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] {
    var total: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
    for agent in agents {
        if !agent.compromised {
            total.append(agent)
            print(agent.coverName)
        }
    }
    return total
}
//: ## Step 6
//: Call the above function to find the total number of clean agents and print a message that says "# clean agents out of # total agents." Use the total number of agents in the array from step 2 as the second number in the string.
let cleanAgents = findCleanAgents(agents: agents)
print("\(cleanAgents.count) clean agents out of \(agents.count) total agents")
//: ## Step 7
//: Create a function called "findHighRisk" that prints out the real names and access levels of agents with level 8 or higher. If one of these agents is also currently compromised, add `**WARNING** **COMPROMISED**` to the end of the string that includes their name and access level.
//: - Example: `Jon Voight, level: 9 **WARNING** **COMPROMISED**`
func findHighRisk(agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)]) -> Void {
    for agent in agents {
        if agent.accessLevel >= 8 {
            if agent.compromised {
                print("\(agent.coverName), level: \(agent.accessLevel) **WARNING** **COMPRIMISED**")
            } else {
                print("\(agent.coverName), level: \(agent.accessLevel)")
            }
        }
    }
}


//: ## Step 8
//: Call the above function and check the output in the console to ensure it is functioning properly.
findHighRisk(agents: agents)


//: ## Step 9
//: Create a function that finds totals for low, mid, and high level agents. Low level agents are 4 or lower, mid are 5-7, and high level agents are 8 or above. Iterate over each agent and use a `switch` statement to determine their level group. At the end of the function, print a statement like the following: "# low level agents, # mid level agents, and # high level agents"
func totalAgentTypes(agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)]) -> Void {
    var low = 0, mid = 0, high = 0
    for agent in agents {
        switch true {
            case agent.accessLevel <= 4:
                low += 1
            case agent.accessLevel <= 7 && agent.accessLevel >= 5:
                mid += 1
            case agent.accessLevel >= 8:
                high += 1
            default:
                print("No access level found.")
        }
    }
    print("\(low) low level agents, \(mid) mid level agents, and \(high) high level agents")
}
//: ## Step 10
//: Call the above function and check its output in the console.
totalAgentTypes(agents: agents)


//: ## Step 11 (Optional)
//: Create and call a function that prints the cover names and access levels of all agents, but the list should be sorted by access level, in ascending order.



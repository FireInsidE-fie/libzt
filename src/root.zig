//! By convention, root.zig is the root source file when making a library. If
//! you are making an executable, the convention is to delete this file and
//! start with main.zig instead.
const std = @import("std");
const testing = std.testing;

pub export fn zt_isalpha(c: u8) bool {
	if ((c >= 'A' and c <= 'Z') or (c >= 'a' and c <= 'z')) {
		return true;
	}
	return false;
}

test "zt_isalpha" {
	try testing.expect(zt_isalpha('c') == true);
	try testing.expect(zt_isalpha('0') == false);
	try testing.expect(zt_isalpha('Z') == true);
	try testing.expect(zt_isalpha(0) == false);
	try testing.expect(zt_isalpha('P') == true);
	try testing.expect(zt_isalpha('\n') == false);
	try testing.expect(zt_isalpha('N') == true);
}